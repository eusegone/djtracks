class Track < ActiveRecord::Base

  mount_uploader :track_file, TrackFileUploader
  mount_uploader :track_image, TrackImageUploader
  belongs_to :user
  has_many :comments

  acts_as_commentable
end
