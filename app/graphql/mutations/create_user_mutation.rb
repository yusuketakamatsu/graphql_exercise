class Mutations::CreateUserMutation < Mutations::BaseMutation
  null true

  argument :name, String, required: true
  argument :email, String, required: true

  field :error, Types::ErrorType, null: false

  def resolve(name:, email:)
    begin
      existed_user = User.find_by(email: email)
      message = ''

      if existed_user
        message = 'already exists the user.'
      else
        user = User.new(name: name, email: email)
        user.save

        user_information = UserInformation.new(user_id: user.id, detail: '')
        user_information.save
      end
    rescue => e
      return GraphQL::ExecutionError.new(e.message)
    end

    { error: { message: message } }
  end
end
