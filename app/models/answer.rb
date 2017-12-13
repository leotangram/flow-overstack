class Answer < ApplicationRecord
	has_many :comments
	has_many :votes
	belongs_to :user
	belongs_to :question
end
