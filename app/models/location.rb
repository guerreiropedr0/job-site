class Location < ApplicationRecord
  has_many :jobs
  has_many :companies
end
