class SequenceMatcher

  attr_reader :master_sequence, :guess
  def initialize(master_sequence, guess)
    @master_sequence = master_sequence
    @guess = guess
  end

  def match?
    guess == master_sequence
  end

  def match_count
    letters = []
    g = guess.chars
    m = master_sequence.chars

      letters = g.map do |letter| letter if m.include?(letter)
      end

    letters.join.length
  end



end
