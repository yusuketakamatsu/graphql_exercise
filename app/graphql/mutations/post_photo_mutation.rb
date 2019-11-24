class Mutations::PostPhotoMutation < Mutations::BaseMutation
  null true

  argument :name, String, required: true
  argument :description, String, required: false

  field :post_photo, Types::PhotoType, null: false

  def resolve(name:, description:)
    begin
      photo = Photo.new(name: name, description: description)
      photo.save
      photo.url = "http://mysite.com/img/#{photo.id}.img"
      photo.save
    rescue => e
      return GraphQL::ExecutionError.new(e.message)
    end

    { post_photo: photo }
  end
end
