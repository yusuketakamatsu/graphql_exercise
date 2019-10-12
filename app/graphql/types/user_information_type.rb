Types::UserInformationType = GraphQL::ObjectType.define do
  name "UserInformation"
  field :id, !types.ID
  field :detail, !types.String
end
