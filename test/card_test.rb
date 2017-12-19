require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'

class CardTest < Minitest::Test

  def test_if_exists
    card  = Card.new("What is the capital of Alaska?","Juneau")

    assert_instance_of Card, card
  end

end
