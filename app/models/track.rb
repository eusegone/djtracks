class Track < ActiveRecord::Base

  mount_uploader :track_file, TrackFileUploader
  belongs_to :user
  has_many :comments

  acts_as_commentable
end
