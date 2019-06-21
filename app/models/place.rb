class Place < ApplicationRecord
  paginates_per 2
  belongs_to :user
  has_many :comments
  has_many :photos
  
  geocoded_by :address
  after_validation :geocode
  validates :name, presence: true
  validates :address, :description, presence: true
end
