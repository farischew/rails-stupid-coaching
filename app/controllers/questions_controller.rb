class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @input = params[:question]
    if @input == 'I am going to work'
      @output = 'Great!'
    elsif @input.end_with?('?')
      @output = 'Silly question, get dressed and go to work!'
    else
      @output = "I don't care, get dressed and go to work!"
    end
  end
end
