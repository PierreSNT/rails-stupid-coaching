class QuestionsController < ApplicationController
  def ask
    @question = params[:question]
    return @question
  end

  def answer
     #1. If the message is I am going to work, the coach will answer Great!
    if ask == "I am going to work"
      @answer = "Great!"
      #2. If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
    elsif ask.include? "?"
      @answer = "Silly question, get dressed and go to work!"
      #3. Otherwise the coach will answer I don't care, get dressed and go to work!
    else
      @answer = "I don't care, get dressed and go to work!"
    end
    return @answer
  end
end
