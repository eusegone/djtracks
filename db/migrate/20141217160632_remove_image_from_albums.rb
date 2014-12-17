class RemoveImageFromAlbums < ActiveRecord::Migration
  def change
    remove_column :albums, :image, :string
  end
end
