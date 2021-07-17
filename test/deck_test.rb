require 'minitest/test'
require 'minitest/autorun'
require './lib/deck'
require 'pry'

class CardTest < Minitest::Test
  def test_deck_exists
    deck = Deck.new

    assert_instance_of Deck, deck
  end

  def test_it_has_a_full_deck_in_array
    deck = Deck.new
    expected_ranks = %w[ace 2 3 4 5 6 7 8 9 10 jack queen king]
    expected_suites = %w[hearts spades diamonds clubs]
    expected_cards = expected_ranks.flat_map { |rank| expected_suites.map { |suite| Card.new(rank, suite).to_text } }

    assert_kind_of Array, deck.cards
    assert_kind_of String, deck.cards[0]
    assert_equal  52, deck.cards.length
    assert_equal expected_cards, deck.cards
  end

  def test_it_can_shuffle_cards
    deck_1 = Deck.new
    deck_2 = Deck.new
    # assert that deck_1 and deck_2 cards have the same values befor shuffling
    assert_equal deck_2.cards, deck_1.cards

    deck_2.shuffle_it
    #refute equality of unshuffled deck_1 array from shuffled deck_2 array
    refute_equal deck_1.cards, deck_2.cards
  end
end
