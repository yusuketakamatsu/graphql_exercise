class Mutations::CreateUserMutation < Mutations::BaseMutation
  null true

  argument :name, String, required: true
  argument :email, String, required: true

  field :user, Types::UserType, null: false

  def resolve(name:, email:)
    begin
      user = User.new(name: name, email: email)
      user.save
    rescue => e
      return GraphQL::ExecutionError.new(e.message)
    end

    { user: user}
  end
end
