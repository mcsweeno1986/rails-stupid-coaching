class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question.end_with?('?')
      @answer = 'Silly question get dressed go to work'
    elsif @question == 'I am going to work'
      @answer = 'GREAT!'
    else
      @answer = "I don't care, get dressed and go to work"
    end
  end
end
