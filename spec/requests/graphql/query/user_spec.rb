require 'rails_helper'

RSpec.describe 'user query', type: :request do
  subject { post graphql_path, params: { query: query } }

  let!(:user) { FactoryBot.create(:user) }
  let!(:user_information) {
    FactoryBot.create(:user_information, user_id: user.id)
  }

  let(:query) do
    <<~QUERY
      {
        user {
          id
          email
          name
          user_information {
            detail
          }
        }
      }
    QUERY
  end

  it 'response body is User data' do
    subject
    json = JSON.parse(response.body, symbolize_names: true)
    expect((json[:data][:user][:id]).to_i).to eq user.id
    expect(json[:data][:user][:email]).to eq user.email
    expect(json[:data][:user][:name]).to eq user.name
    expect(json[:data][:user][:user_information][:detail]).to eq user_information.detail
  end
end
