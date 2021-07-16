require 'minitest/test'
require 'minitest/autorun'
require './lib/deck'

class CardTest < Minitest::Test
  def test_deck_exists
    deck = Deck.new()

    assert_instance_of Deck, deck
  end
end
