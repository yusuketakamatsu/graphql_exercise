class AddCategoryToPhoto < ActiveRecord::Migration[5.2]
  def change
    add_column :photos, :category, :string, null: false, default: "PORTRAIT"
  end
end
