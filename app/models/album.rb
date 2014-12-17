class Album < ActiveRecord::Base

belongs_to :user
has_many :tracks

has_and_belongs_to_many :tracks
  
end
