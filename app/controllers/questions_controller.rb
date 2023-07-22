class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach_answer_enhanced(@question)
    # if @question.end_with?("?")
    #   @answer = "Silly question, get dressed and go to work!"
    # elsif @question == "I am going to work right now!"
    #   @answer = "empty string"
    # else
    #   @answer = "I don't care, get dressed and go to work!"
    # end
  end

  private

  def coach_answer(your_message)
    # TODO: return coach answer to your_message
    if your_message.end_with?("?")
      return "Silly question, get dressed and go to work!"
    elsif your_message == "I am going to work right now!"
      return ""
    else
      return "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    # TODO: @answer coach answer to your_message, with additional    custom rules of yours!
    answer = coach_answer(your_message)
    if your_message == "I AM GOING TO WORK RIGHT NOW!"
      return ""
    elsif your_message == your_message.upcase
      return "I can feel your motivation! #{answer}"
    else
      return answer
    end
  end
end
