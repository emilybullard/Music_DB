class Album < ActiveRecord::Base

	belongs_to :genre
	belongs_to :artist
	has_many :songs
	
	validates :title, presence: true  
end
