gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/guess_holder.rb'

class GuessHolderTest < Minitest::Test

  def test_guess_holder_starts_empty?
    holder = GuessHolder.new
    assert_equal 0, holder.turns_counter
  end

  def test_that_it_can_add_a_guess
    holder = GuessHolder.new
    holder.add_guess('rgby')
    assert_equal 1, holder.turns_counter
  end

  def test_that_it_can_add_many_guesses
    holder = GuessHolder.new
    holder.add_guess('rgby')
    holder.add_guess('bbby')
    assert_equal 2, holder.turns_counter
  end

  def test_that_guesses_are_in_the_guess_history
    holder = GuessHolder.new
    holder.add_guess('rgby')
    holder.add_guess('bbby')
    assert_equal ['rgby', 'bbby'], holder.guess_history
  end
end
