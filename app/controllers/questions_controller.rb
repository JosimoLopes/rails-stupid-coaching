class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @answer = ['Great!', 'Silly question, get dressed and go to work!', "I don't care, get dressed and go to work!"]
    user_question = params[:user_question]
    if user_question == 'I am going to work'
      @answer = @answer[0]
    elsif user_question[-1] == '?'
      @answer = @answer[1]
    else
      @answer = @answer[2]
    end
  end

end
