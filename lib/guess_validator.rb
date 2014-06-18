class GuessValidator

  attr_reader :guess, :length  # => nil
  def initialize(guess)
    @guess = guess.chars       # => ["r", "g", "b", "y"]
    @length = guess.length     # => 4
  end


  def valid?
    length? && correct_characters?  # => true
  end

  def length?
    @length == 4  # => true
  end

  def correct_characters?
    input = guess          # => ["r", "g", "b", "y"]
    valid = %w(r g b y)    # => ["r", "g", "b", "y"]

    invalid_characters = input - (input & valid)  # => []
    invalid_characters.empty?                     # => true
  end

end
