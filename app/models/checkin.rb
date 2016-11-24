class Checkin < ApplicationRecord
  belongs_to :user
  has_many :lineitems,dependent: :destroy,:inverse_of => :checkin
  accepts_nested_attributes_for :lineitems,
  :reject_if => :all_blank, :allow_destroy => true

   enum status: [ :pending,:staying,:finish ]
  
end
