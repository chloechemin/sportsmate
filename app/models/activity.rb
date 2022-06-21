class Activity < ApplicationRecord
  belongs_to :user

  validates :title, :description, :price, :level, :location, :group_size, presence: true
  validates :price, :group_size, numericality: { only_integer: true }
  validates :level, inclusion: { in: ['beginner', 'intermediate', 'advanced'] }
end
