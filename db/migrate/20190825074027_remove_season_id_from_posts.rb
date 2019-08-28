class RemoveSeasonIdFromPosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :season_id, :string
  end
end
