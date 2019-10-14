FactoryBot.define do
  factory :user do
    name { 'tarou' }
    email { 'exapmle@gmail.com' }
  end

  factory :user_information do
    detail { 'detail' }
  end
end