require './lib/card'

class Deck
  attr_reader :cards

  def initialize
    @cards = generate_cards
  end

  private

  def generate_cards
    ranks = %w[ace 2 3 4 5 6 7 8 9 10 jack queen king]
    suits = %w[hearts spades diamonds clubs]
    ranks.flat_map { |rank| suits.map { |suit| Card.new(rank, suit) } }
  end

end
