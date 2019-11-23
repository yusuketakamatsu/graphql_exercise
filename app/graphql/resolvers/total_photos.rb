module Resolvers
  class TotalPhotos < Resolvers::Base
    type Integer, null: false

    def resolve
      Photo.all.length
    end
  end
end
