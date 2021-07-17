require './lib/card'

class Deck
  attr_reader :cards

  def initialize
    @cards = generate_cards
  end

  # there's shuffle! method in the Array class that can do this work
  # but I built the same functionality here using the Fisher - Yates algorithm
  def shuffle_it
    index = @cards.length
    # iterate through the array from the last index down to index = 1
    while index > 0
      index-=1
      # generate a random index between 0 and the current index
      random_index = rand(index)
      #swap the values at the random index with the current index (this leaves that value at the end of the array and therefore this value will not be swaped again)
      @cards[random_index], @cards[index] = @cards[index], @cards[random_index]
    end
    return @cards
  end

  private

  def generate_cards
    ranks = %w[ace 2 3 4 5 6 7 8 9 10 jack queen king]
    suites = %w[hearts spades diamonds clubs]
    ranks.flat_map {|rank| suites.map { |suite| Card.new(rank, suite).to_text }}
  end
end
