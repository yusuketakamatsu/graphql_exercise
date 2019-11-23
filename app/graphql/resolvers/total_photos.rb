module Resolvers
  class TotalPhotos < Resolvers::Base
    type Integer, null: false

    def resolve
      42
    end
  end
end
