require 'minitest/test'
require 'minitest/autorun'
require './lib/deck'

class CardTest < Minitest::Test
  def test_deck_exists
    deck = Deck.new()

    assert_instance_of Deck, deck
  end

  def test_it_has_a_full_deck_in_array
    deck = Deck.new()
    expected_ranks = %w[ace 2 3 4 5 6 7 8 9 10 jack queen king]
    expected_suits = %w[hearts spades diamonds clubs]
    expected_cards = expected_ranks.flat_map { |rank| expected_suits.map { |suit| Card.new(rank, suit) } }

    assert_kind_of Array, deck.cards
    assert_equal  52, deck.cards.length
    assert_equal  expected_cards, deck.cards
  end
end
