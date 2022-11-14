class Company < ApplicationRecord
  belongs_to :location
  has_many :jobs

  validates :description, presence: true
  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
