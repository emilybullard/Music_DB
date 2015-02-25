class Song < ActiveRecord::Base

	belongs_to :genre
	belongs_to :artist
	belongs_to :album
	
	validates :name, presence: true
end
