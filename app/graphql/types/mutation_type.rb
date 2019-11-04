module Types
  class MutationType < Types::BaseObject
    field :updatePostMutation, Mutations::UpdatePostMutation.field
    field :createPostMutation, Mutations::CreatePostMutation.field
    field :updateUserInformationMutation, Mutations::UpdateUserInformationMutation.field
    
    # TODO: Remove me
    field :testField, types.String do
      description "An example field added by the generator"
      resolve ->(obj, args, ctx) {
        "Hello World!"
      }
    end
  end
end
