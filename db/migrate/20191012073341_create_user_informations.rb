class CreateUserInformations < ActiveRecord::Migration[5.2]
  def change
    create_table :user_informations do |t|
      t.integer :user_id
      t.string :detail

      t.timestamps
    end
  end
end
