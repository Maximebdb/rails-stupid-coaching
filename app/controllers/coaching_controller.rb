class CoachingController < ApplicationController
  def answer
    @question = params["question"]
    @answer = coach_answer_enhanced(@question)
    # fail
  end

  def ask
  end

  def coach_answer(your_message)
  # TODO: return coach answer to your_message
    if your_message.end_with? "?"
      answer = "Silly question, get dressed and go to work!"
    elsif your_message == "I am going to work right now!"
      answer = ""
    else
      answer = "I don't care, get dressed and go to work!"
    end
    answer
  end

  def coach_answer_enhanced(your_message)
    if your_message == your_message.upcase
      if your_message.capitalize == "I am going to work right now!"
        answer = ""
      else
        answer = "I can feel your motivation! " + coach_answer(your_message)
      end
    else
      answer = coach_answer(your_message)
    end
    answer
  end
end
