class CreatePhotoUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :photo_users do |t|
      t.string :github_login
      t.string :name
      t.string :avatar
      t.belongs_to :photos
      t.timestamps
    end
  end
end
