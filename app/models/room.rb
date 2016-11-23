class Room < ApplicationRecord
  belongs_to :roomtype
  validates :room_code,  presence: true 
  mount_uploader :avatar, PictureUploader
end
