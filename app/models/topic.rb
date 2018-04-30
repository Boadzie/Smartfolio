class Topic < ApplicationRecord
	validates_presence_of :title
	has_many :blogs

	def self.recent
		order("created_at DESC")
	end

	def self.has_blogs
		includes(:blogs).where.not(blogs: {id: nil})
	end
end
