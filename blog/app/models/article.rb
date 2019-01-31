class Article < ApplicationRecord
	validates :title, presence: true
	validates :text, presence: true
	has_many :comments

	def subject
		title
	end
end