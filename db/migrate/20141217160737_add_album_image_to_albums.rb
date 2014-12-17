class AddAlbumImageToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :album_image, :string
  end
end
