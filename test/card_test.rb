require 'minitest/test'
require 'minitest/autorun'
require './lib/card'

class CardTest < Minitest::Test
  def test_card_exists
    card = Card.new("queen", "hearts")

    assert_instance_of Card, card
  end

  def test_it_has_rank_and_suite
    card = Card.new("queen", "hearts")

    assert_equal "queen", card.rank
    assert_equal "hearts", card.suite
  end

  def test_it_can_convert_card_object_to_string
    card_string = Card.new("queen", "hearts").to_text

    assert_equal "queen of hearts", card_string
  end
end
