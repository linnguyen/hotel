class Lineitem < ApplicationRecord
	belongs_to :checkin
	has_many :lineitem_details, dependent: :destroy,:inverse_of => :lineitem
	accepts_nested_attributes_for :lineitem_details,
	:reject_if => :all_blank, :allow_destroy => true
end
