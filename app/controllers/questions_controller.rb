class QuestionsController < ApplicationController

  def ask
    @question = params[:question]
  end

  def answer
    @question = params[:question]
    @answers = ["Hello", "The time is #{Time.now}"]
    if @question.include?("?")
      @answer = "Silly question, get dressed and go to work!"
    elsif @question.include?("Hello")
      @answer = @answers[0]
    elsif @question.include?("time")
      @answer = @answers[1]
    elsif @question == "I am going to work"
      @answer = "Great!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
    # @answer = @answers.select { |answer| answer.include?(@question) }
    # return @answer
  end

end
