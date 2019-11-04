class Mutations::CreatePostMutation < Mutations::BaseMutation
  null true

  argument :subject, String, required: true

  field :post, Types::PostType, null: false

  def resolve(subject:)
    begin
      post = context[:current_user].posts.build
      post.subject = subject
      post.save
    rescue => e
      return GraphQL::ExecutionError.new(e.message)
    end

    { post: post }
  end
end
