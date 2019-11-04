module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :email, String, null: false

    #field :test, String, null: false # method
    #field :posts_in_date, [Types::PostType], null: false

    #field :user_information, Types::UserInformationType, null: false
    #connection :posts, Types::PostType.connection_type, null: false
  end
end
