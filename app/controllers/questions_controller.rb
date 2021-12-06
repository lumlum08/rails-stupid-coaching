class QuestionsController < ApplicationController
  def ask
    @questions = []
    if params[:question]
      @questions = @questions.select { |question| question.start_with?(params[:question]) }
    end
  end

  def answer
    if params[:question] == "I am going to work"
      @reponse = "Great!"
    elsif params[:question].include?('?')
      @reponse = "Silly question, get dressed and go to work!."
    else
      @reponse = "I don't care, get dressed and go to work!"
    end
  end
end
