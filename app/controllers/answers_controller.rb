class AnswersController < ApplicationController
	def new
	end

	def create
		@question = Question.find(params[:question_id])
		@answer = @question.answers.new(answer_params)

		@answer.save
		redirect_to @question
	end

  private
  	def answer_params
    	params.require(:answer).permit(:description).merge(user_id: current_user.id)
  end
end
