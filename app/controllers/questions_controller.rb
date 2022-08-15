class QuestionsController < ApplicationController

  def ask
  end

  def answer
    answer = params[:question]
    @response = ["Great!", "Silly question, get dressed and go to work!.", "I don't care, get dressed and go to work!"]

    if answer.include? ("?")
      @response = @response[1]
    elsif answer.downcase == "i am going to work"
      @response = @response[0]
    else
      @response = @response[2]
    end
  end
end
