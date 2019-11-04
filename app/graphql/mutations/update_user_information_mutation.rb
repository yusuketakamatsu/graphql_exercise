class Mutations::UpdateUserInformationMutation < Mutations::BaseMutation
  null true

  argument :detail, String, required: true

  field :user_information, Types::UserInformationType, null: false

  def resolve(detail:)
    begin
      user_information = context[:current_user].user_information
      user_information.detail = detail
      user_information.save
    rescue => e
      return GraphQL::ExecutionError.new(e.message)
    end

    { user_information: user_information}
  end
end
