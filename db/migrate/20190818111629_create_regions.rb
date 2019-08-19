class CreateRegions < ActiveRecord::Migration[5.2]
  def change
    create_table :regions do |t|
      t.string :region_name
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
