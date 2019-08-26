class AddSeasonIdToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :season_id, :integer
  end
end
