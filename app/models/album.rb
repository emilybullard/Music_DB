class Album < ActiveRecord::Base

	belongs_to :genre
	belongs_to :artist
	has_many :songs
	
	validates :title, presence: true  

	mount_uploader :cover, CoverUploader
end
