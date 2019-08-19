class CreateSeasons < ActiveRecord::Migration[5.2]
  def change
    create_table :seasons do |t|
      t.string :season_name
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
