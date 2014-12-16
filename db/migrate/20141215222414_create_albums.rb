class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.text :image
      t.integer :track_id

      t.timestamps
    end
  end
end
