require 'minitest/test'
require 'minitest/autorun'
require './lib/card'

class CardTest < Minitest::Test
  def test_card_exists
    card = Card.new("queen", "hearts")

    assert_instance_of Card, card
  end

  def test_it_has_rank_and_suit
    card = Card.new("queen", "hearts")

    assert_equal "queen", card.rank
    assert_equal "hearts", card.suit
  end
end
