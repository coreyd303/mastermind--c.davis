gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/turn_counter.rb'

class GuessHolderTest < Minitest::Test

  def test_guess_holder_starts_empty?
    holder = TurnCounter.new
    assert holder.guess_history.empty?
  end

  def test_that_it_can_add_a_guess
    holder = TurnCounter.new
    holder.add_guess('rgby')
    assert_equal 1, holder.guess_history.count
  end

  def test_that_it_can_add_many_guesses
    holder = TurnCounter.new
    holder.add_guess('rgby')
    holder.add_guess('bbby')
    assert_equal 2, holder.guess_history.count
  end

  def test_that_guesses_are_in_the_guess_history
    holder = TurnCounter.new
    holder.add_guess('rgby')
    holder.add_guess('bbby')
    assert_equal ['rgby', 'bbby'], holder.guess_history
  end
end
