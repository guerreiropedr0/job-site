class Job < ApplicationRecord
  belongs_to :category
  belongs_to :company
  belongs_to :level
  belongs_to :location
  belongs_to :type
end
