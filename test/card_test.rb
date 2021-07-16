require 'minitest/test'
require 'minitest/autorun'
require './lib/card'

class CardTest < MiniTest::Test
  def test_card_exists
    card = Card.new("queen", "hearts")

    assert_instance_of Card, card
  end
end
