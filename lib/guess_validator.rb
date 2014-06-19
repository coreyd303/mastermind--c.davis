class GuessValidator

  attr_reader :guess, :length
  def initialize(guess)
    @guess = guess.chars
    @length = guess.length
  end


  def valid?
    length? && correct_characters?
  end

  def length?
    @length == 4
  end

  def correct_characters?
    input = guess
    valid = %w(r g b y)

    invalid_characters = input - (input & valid)
    invalid_characters.empty?
  end

end
