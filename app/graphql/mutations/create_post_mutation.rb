Mutations::CreatePostMutation = GraphQL::Relay::Mutation.define do
  name "CreatePostMutation"

  input_field :subject, !types.String

  return_field :post, !Types::PostType

  resolve ->(obj, args, ctx) {
    begin
      post = ctx[:current_user].posts.build
      post.subject = args.subject
      post.save
    rescue => e
      return GraphQL::ExecutionError.new(e.message)
    end

    { post: post }
  }
end
