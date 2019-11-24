class Mutations::PostPhotoMutation < Mutations::BaseMutation
  null true

  argument :attributes, Types::PostPhotoInput, required: true

  field :post_photo, Types::PhotoType, null: false

  def resolve(attributes:)
    begin
      photo = Photo.new(
        name: attributes.name,
        description: attributes.description,
        category: attributes.category
      )
      photo.save
      photo.url = "http://mysite.com/img/#{photo.id}.img"
      photo.save
    rescue => e
      return GraphQL::ExecutionError.new(e.message)
    end

    { post_photo: photo }
  end
end
