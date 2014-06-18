class GuessHolder

  attr_reader :guess_history

  def initialize
    @guess_history = []
  end

  def add_guess(guess)
    guess_history << guess
  end

  def turns_counter
    guess_history.count
  end
end


 # I need a guess holder array
 # I need to put the guesses into this array
 # I need to check that the guesses are in the array
