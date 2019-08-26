class RemoveRegionIdFromPosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :region_id, :string
  end
end
