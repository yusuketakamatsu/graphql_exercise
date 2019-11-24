module Resolvers
  class AllPhotos < Resolvers::Base
    type [Types::PhotoType], null: false

    def resolve
      Photo.all
    end
  end
end
