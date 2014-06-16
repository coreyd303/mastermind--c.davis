gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/mastermind'

class GuessTest < Minitest::Test

  def test_a_player_can_make_a_guess
    game = Game.new
    guess = Guess.new('rgby')

    game.add_guess
    assert_equal 1, game.guess_record.count
    assert_equal "rgby", game.guess_record.guesses

  end
end
