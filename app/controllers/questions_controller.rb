class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question_of_user = params[:user_question]
    # @answer = params[:answer]
    if @question_of_user.to_s.include?("?")
      @silly = "Silly question, get dressed and go to work!"
    elsif @question_of_user.to_s.include?("I am going to work")
      @silly = "Great!"
    else
      @silly = "I don't care, get dressed and go to work!"
    end
  end
end
