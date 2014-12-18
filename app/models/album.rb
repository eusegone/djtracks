class Album < ActiveRecord::Base

belongs_to :user
mount_uploader :album_image, AlbumImageUploader
has_and_belongs_to_many :tracks
  
end
