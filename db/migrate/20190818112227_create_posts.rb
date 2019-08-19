class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :season_id
      t.string :region_id
      t.string :user_id
      t.string :favorite_id
      t.text :image_id
      t.text :caption
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
