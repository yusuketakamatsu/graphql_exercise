module Types
  class PostType < Types::BaseObject
    field :id, ID, null: false
    field :subject, String, null: false
  end
end
