gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess_validator.rb'

class GuessValidatorTest<Minitest::Test

  def test_it_has_a_guess_sequence
    guess = GuessValidator.new('guess')
    assert guess.guess
  end

  def test_it_can_validate_a_guess_with_four_characters
    guess = GuessValidator.new('rgby')
    assert guess.length
  end

  def test_it_can_reject_a_guess_with_the_wrong_number_of_characters
    guess = GuessValidator.new('r')
    refute guess.length?
    guess = GuessValidator.new('rg')
    refute guess.length?
    guess = GuessValidator.new('rgb')
    refute guess.length?
  end

  def test_it_can_validate_the_characters_of_a_guess
    guess = GuessValidator.new('rgby')
    assert guess.correct_characters?
  end

  def test_it_can_fully_validate_a_guess
    guess = GuessValidator.new('rgby')
    assert guess.valid?
    guess = GuessValidator.new('llll')#wrong characters
    refute guess.valid?
    guess = GuessValidator.new('rgbygyr')#wrong number of characters
    refute guess.valid?
  end
end
