require './lib/card'

class Guess

  attr_reader :guess,
              :card

  def initialize(guess, card, correct = true)
    @guess = guess
    @card = card
    @correct = correct
  end

  def response
    @answer
  end

end

#card = Card.new("What is the capital of Alaska?", "Juneau")
#guess = Guess.new("Juneau")
#p guess.card
