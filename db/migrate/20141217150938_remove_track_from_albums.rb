class RemoveTrackFromAlbums < ActiveRecord::Migration
  def change
    remove_column :albums, :track_id, :integer
  end
end
