class Artist < ActiveRecord::Base
	
	belongs_to :genre
	has_many :albums
	has_many :songs

	validates :name, :bio, presence: true

	extend FriendlyId
  	friendly_id :name, use: :slugged

end
