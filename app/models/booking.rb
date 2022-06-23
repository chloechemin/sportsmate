class Booking < ApplicationRecord
  belongs_to :activity
  belongs_to :user

  validates :start_time, :end_time, :status, :spots_required, presence: true
  validates :spots_required, numericality: { only_integer: true }
  validates :status, inclusion: { in: ['Not confirmed', 'Confirmed'] }
end
