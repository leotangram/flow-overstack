class QuestionsController < ApplicationController
  def index
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
  end

  def edit
  end

  def create
    @question = Question.new(question_params)
 
    @question.save
    redirect_to @question
  end

  def update
  end

  def destroy
  end

  private
    def question_params
      params.require(:question).permit(:title, :description).merge(user_id: current_user.id)
    end
end
