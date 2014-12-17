class AddTrackImageToTracks < ActiveRecord::Migration
  def change
    add_column :tracks, :track_image, :text
  end
end
