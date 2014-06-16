require_relative './guess'
require_relative './sequence_generator'

class Game

  attr_reader :guess_record

  def initialize
    @guess_record = []
  end

  def guess_record
    @guess_record
  end

  def add_guess(guess)
    @guess_record << guess
  end

  # Guess.new(cmd)
end

s = SequenceGenerator.new(4, ["b", "g", "r", "y"])
s.generate
