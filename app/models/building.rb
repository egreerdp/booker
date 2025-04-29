class Building < ApplicationRecord
  has_many :rooms
  belongs_to :estate
  has_one :address
end
