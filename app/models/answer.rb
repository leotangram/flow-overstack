class Answer < ApplicationRecord
	has_many :comments, :as => :commentable
	has_many :votes
	belongs_to :user
	belongs_to :question
end
