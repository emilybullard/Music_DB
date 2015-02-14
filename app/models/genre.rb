class Genre < ActiveRecord::Base

	has_many :artists 
	has_many :albums
	has_many :songs
	
	validates :name, presence: true 
	validates :name, uniqueness: true
	validates :name, length: {maximum: 25}
	
end
