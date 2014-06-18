class SequenceMatcher
  attr_reader :secret, :guess

  def initialize(secret, guess)
    @secret = secret
    @guess  = guess
  end

  def match?
    guess == secret
  end

  def match_count
    guess_chars  = guess.chars
    secret_chars = secret.chars
    count        = 0

    guess_chars.each do |char|
      if secret_chars.include?(char)
        count += 1
        secret_chars.slice!(secret_chars.index(char))
      end
    end

    count
  end

  def match_position
    guess_chars  = guess.chars
    secret_chars = secret.chars
    count        = 0

    guess_chars.each_with_index do |letter, index|
      count += 1 if letter == secret_chars[index]
    end

    count
  end

  # def position_count
  #   guess_chars = guess.chars
  #   secret_chars = secret.chars
  #   count = 0
  #
  #   guess_chars.each do |char|
  #     if secert_chars.SOMETHING?(char)
  #
  #
  # end
end
