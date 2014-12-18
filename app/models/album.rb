class Album < ActiveRecord::Base

mount_uploader :album_image, AlbumImageUploader
has_and_belongs_to_many :tracks
  

  def user
    tracks.first.try :user
  end

  def user_id
    user.try :id
  end
end
