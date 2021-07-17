class Card
  attr_reader :rank,
              :suite
  def initialize(rank, suite)
    @rank = rank
    @suite = suite
  end

  # takes card object and outputs string
  def to_text
    "#{rank} of #{suite}"
  end
end
