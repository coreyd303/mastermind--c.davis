gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess_validator.rb'

class GuessValidatorTest<Minitest::Test

  def test_it_has_a_guess_sequence
    guess = GuessValidator.new('guess')
    assert guess.guess
  end

end
