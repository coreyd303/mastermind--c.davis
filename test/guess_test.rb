gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/game'

class GuessTest < Minitest::Test

#passed
  def test_a_player_can_make_a_guess
    guess = Guess.new("rgby")

    assert_equal "rgby", guess.guess

  end

#working on now
  def test_that_the_guess_goes_to_guess_record
    game = Game.new
    guess = Guess.new("rgby")

    assert_equal "rgby", game.add_guess.guess_record[0]

  end
end
