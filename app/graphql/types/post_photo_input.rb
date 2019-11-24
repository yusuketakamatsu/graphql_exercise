class Types::PostPhotoInput < Types::BaseInputObject
  argument :name, String, required: true
  argument :description, String, required: false
  argument :category, Types::PhotoCategory, required: false, default_value: "PORTRAIT"
end
