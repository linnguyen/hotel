class Room < ApplicationRecord
  belongs_to :roomtype
  validates :name,  presence: true 
  mount_uploader :avatar, PictureUploader
end
