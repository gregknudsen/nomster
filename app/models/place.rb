class Place < ApplicationRecord
  paginates_per 2
  belongs_to :user
  validates :name, presence: true
end
