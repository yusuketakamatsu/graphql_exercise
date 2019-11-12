module Resolvers
  class User < Resolvers::Base
    type Types::UserType, null: false

    def resolve
      context[:current_user]
    end
  end
end
