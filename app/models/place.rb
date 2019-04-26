class Place < ApplicationRecord
  paginates_per 2
  belongs_to :user
  has_many :comments
  geocoded_by :address
  after_validation :geocode
  validates :name, :address, :description, presence: true
  validates :name, length: { minimum: 3 }
end
