class TurnCounter

  attr_reader :guess_history

  def initialize
    @guess_history = []
  end

  def add_guess(guess)
    guess_history << guess
  end
end
