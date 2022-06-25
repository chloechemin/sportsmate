class Activity < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :title, :description, :price, :level, :location, :group_size, presence: true

  validates :price, numericality: { only_float: true }
  validates :group_size, numericality: { only_integer: true }
  validates :level, inclusion: { in: ['Beginner', 'Intermediate', 'Advance'] }

end
