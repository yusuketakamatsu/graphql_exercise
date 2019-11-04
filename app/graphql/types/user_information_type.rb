module Types
  class UserInformationType < Types::BaseObject
    field :id, ID, null: false
    field :detail, String, null: false
  end
end
