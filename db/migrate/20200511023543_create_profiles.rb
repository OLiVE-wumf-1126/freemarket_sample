class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.integer :user_id,        null: false, foreign_key: true
      t.string :nickname,        null: false
      t.string :image
      t.text :profile
      t.timestamps
    end
  end
end