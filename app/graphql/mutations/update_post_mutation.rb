class Mutations::UpdatePostMutation < Mutations::BaseMutation
  null true

  argument :id, ID, required: true
  argument :subject, String, required: true

  field :post, Types::PostType, null: false

  def resolve(id:, subject:)
    begin
      post = context[:current_user].posts.find(id)
      post.subject = subject
      post.save
    rescue => e
      return GraphQL::ExecutionError.new(e.message)
    end

    { post: post }
  end
end
