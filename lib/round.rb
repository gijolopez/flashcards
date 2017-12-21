require './lib/card'
require './lib/guess'
require './lib/deck'

class Round
  attr_reader :deck, :guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
  end

  def current_card
    @deck.cards[0]
  end

  def record_guess(guess)
    guess_1 = Guess.new(guess, current_card)
    @guesses << guess_1
    guess_1 
  end
end
