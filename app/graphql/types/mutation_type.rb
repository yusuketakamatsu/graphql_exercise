module Types
  class MutationType < Types::BaseObject
    field :update_post_mutation, mutation: Mutations::UpdatePostMutation
    field :create_post_mutation, mutation: Mutations::CreatePostMutation
    field :update_user_information_mutation, mutation: Mutations::UpdateUserInformationMutation
    field :create_user_mutation, mutation: Mutations::CreateUserMutation
  end
end
