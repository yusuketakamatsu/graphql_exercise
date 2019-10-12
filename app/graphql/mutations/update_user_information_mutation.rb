Mutations::UpdateUserInformationMutation = GraphQL::Relay::Mutation.define do
  name "UpdateUserInformationMutation"

  input_field :detail, !types.String

  return_field :user_information, !Types::UserInformationType

  resolve ->(obj, args, ctx) {
    begin
      user_information = ctx[:current_user].user_information
      user_information.detail = args.detail
      user_information.save
    rescue => e
      return GraphQL::ExecutionError.new(e.message)
    end

    { user_information: user_information}
  }
end
