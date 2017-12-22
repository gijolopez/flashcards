require './lib/card'

class Guess
  attr_reader :response,
              :card,
              :feedback

  def initialize(response, card)
      @response    = response
      @card        = card
      @feedback   = feedback
  end

  def correct?
    if @response == @card.answer
      true
    else
      false
    end
  end

  def feedback
    if @response == @card.answer
      return "Correct!"
    else
      "Incorrect!"
    end
  end
end
