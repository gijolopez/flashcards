require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/guess'
require './lib/deck'
require './lib/round'

class RoundTest < MiniTest::Test

  def test_if_exists
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
    deck   = Deck.new([card_1, card_2])
    round  = Round.new(deck)

    assert_instance_of Round, round
  end

  def test_deck_object
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
    deck   = Deck.new([card_1, card_2])
    round  = Round.new(deck)

    assert_equal deck, round.deck
  end

  def test_guesses_in_empty_array
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
    deck   = Deck.new([card_1, card_2])
    round  = Round.new(deck)

    assert_equal [], round.guesses
  end

  def test_current_round_card
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
    deck   = Deck.new([card_1, card_2])
    round  = Round.new(deck)

    assert_equal card_1, round.current_card
  end

  def test_record_guesses
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars")
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west")
    deck   = Deck.new([card_1, card_2, card_3])
    round  = Round.new(deck)

    assert_instance_of Guess, round.record_guess("Juneau")
    assert_equal 1, round.guesses.count
  end

  def test_round_guesses_first_feedback
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars")
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west")
    deck   = Deck.new([card_1, card_2, card_3])
    round  = Round.new(deck)
    round.record_guess("Juneau")
    round.record_guess("North north west")

    assert_equal "Incorrect!", round.guesses.last.feedback
    assert_equal "Correct!", round.guesses.first.feedback
  end

  def test_number_of_correct_quesses
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars")
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west")
    deck   = Deck.new([card_1, card_2, card_3])
    round  = Round.new(deck)
    round.record_guess("Juneau")
    round.record_guess("North north west")

    assert_equal 1, round.number_correct
  end

end
