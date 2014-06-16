gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/game'
require_relative '../lib/guess'

class MasterMindIntegrationTest < Minitest::Test

#passed
  def test_it_can_start_a_new_game
    game = Game.new
  end

#passed
  def test_the_guess_record_starts_empty?
    assert_equal [], Game.new.guess_record
  end

#passed
  def test_count_the_guesses_in_a_new_game
    game = Game.new
    assert_equal 0, game.guess_record.count
  end

#passed
  def test_put_a_new_guess_into_guess_record
    game = Game.new
    #guess = Guess.new

    game.add_guess('rgby')
    assert_equal 1, game.guess_record.count
    game.add_guess('rbby')
    assert_equal 2, game.guess_record.count
  end
end
