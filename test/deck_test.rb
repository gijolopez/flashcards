require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/guess'



class DeckTest < Minitest::Test

  ef test_if_guess_exists
    card  = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)
    deck  = Deck.new

    assert_instance_of Deck, deck
  end




end
