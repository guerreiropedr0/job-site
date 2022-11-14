class Location < ApplicationRecord
  has_many :companies
  has_many :jobs

  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
