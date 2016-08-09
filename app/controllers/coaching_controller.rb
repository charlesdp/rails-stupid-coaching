class CoachingController < ApplicationController

  def ask
    # <form action="/???">
    #   <label for="question">Speak to your coach</label>
    #   <input type="text" id="question" name="???" placeholder="what time is it?">
    #   <input type="submit" value="Go on!">
    # </form>
  end

  def answer
    @query = params[:query]
    @answer = coach_answer(@query)
  end

  def coach_answer(query)
    if query.downcase == "i am going to work right now!"
      'test'
    elsif query.end_with?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end