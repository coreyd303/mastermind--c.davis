class Game

  def initialize
    @guess_record = []
  end

  def guess_record
    @guess_record
  end

  def add_guess
    @guess_record << @guess
  end
  def guesses

  end
end

class Guess

  
  def initialize(guess)
    @guess = guess
  end

end
