class Building < ApplicationRecord
  has_many :rooms
  belongs_to :estate
end
