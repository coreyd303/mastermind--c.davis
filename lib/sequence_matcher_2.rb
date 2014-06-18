class SequenceMatcher2

  attr_reader :secret, :guess
  def initialize(secret, guess)
    @secret = secret
    @guess = guess
  end

  def match?
    secret == guess
  end

  def count
    
  end
end
