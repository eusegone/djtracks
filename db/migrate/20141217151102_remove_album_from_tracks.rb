class RemoveAlbumFromTracks < ActiveRecord::Migration
  def change
    remove_column :tracks, :album_id, :interger
  end
end
