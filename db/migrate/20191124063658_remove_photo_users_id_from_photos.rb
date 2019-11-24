class RemovePhotoUsersIdFromPhotos < ActiveRecord::Migration[5.2]
  def change
    remove_column :photos, :photo_users_id, :bigint
  end
end
