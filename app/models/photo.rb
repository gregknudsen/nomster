class Photo < ApplicationRecord
	attr_accessor :picture
  mount_uploader :picture, PictureUploader

	belongs_to :user
	belongs_to :place
end
