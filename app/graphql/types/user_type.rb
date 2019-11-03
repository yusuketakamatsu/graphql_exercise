Types::UserType = GraphQL::ObjectType.define do
  name "User"
  field :id, !types.ID
  field :name, !types.String
  field :email, !types.String

  field :test, !types.String # method
  field :posts_in_date, types[!Types::PostType]

  field :user_information, !Types::UserInformationType
  connection :posts, !Types::PostType.connection_type
end
