class CreateJoinTableAlbumToTrack < ActiveRecord::Migration
  def change
    create_join_table :albums, :tracks do |t|
      # t.index [:album_id, :track_id]
      # t.index [:track_id, :album_id]
    end
  end
end
