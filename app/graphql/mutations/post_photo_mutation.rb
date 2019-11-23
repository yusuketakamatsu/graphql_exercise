class Mutations::PostPhotoMutation < Mutations::BaseMutation
  null true

  argument :name, String, required: true
  argument :description, String, required: false

  field :post_photo, Boolean, null: false

  def resolve(name:, description:)
    begin
      photo = Photo.new(name: name, description: description)
      photo.save
    rescue => e
      return GraphQL::ExecutionError.new(e.message)
    end

    { post_photo: true }
  end
end
