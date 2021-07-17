require './lib/card'

class Deck
  attr_reader :cards

  def initialize
    @cards = generate_cards
  end

  private

  def generate_cards
    ranks = %w[ace 2 3 4 5 6 7 8 9 10 jack queen king]
    suites = %w[hearts spades diamonds clubs]
    ranks.flat_map { |rank| suites.map { |suite| Card.new(rank, suite).to_text } }
  end
end
