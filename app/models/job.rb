class Job < ApplicationRecord
  belongs_to :category
  belongs_to :company
  belongs_to :level
  belongs_to :location
  belongs_to :type

  validates :description, presence: true
  validates :position, presence: true
  validates :salary, allow_nil: true, numericality: true
end
