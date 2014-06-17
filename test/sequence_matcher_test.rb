gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/sequence_matcher'

class SequenceMatcherTest < Minitest::Test

  def test_it_has_a_master_sequence
    matcher = SequenceMatcher.new("rgby", "guess")
    assert_equal "rgby", matcher.master_sequence
  end

  def test_another_master_sequence
    matcher1 = SequenceMatcher.new("absf", "guess")
    assert_equal "absf", matcher1.master_sequence
    matcher2 = SequenceMatcher.new("rrgy", "guess")
    assert_equal "rrgy", matcher2.master_sequence
  end

  def test_it_has_a_guess_sequence
    matcher = SequenceMatcher.new("bbby", "bbby")
    assert_equal "bbby", matcher.guess
  end

  def test_it_another_guess
    matcher = SequenceMatcher.new("rrry", "rrry")
    assert_equal "rrry", matcher.guess

    matcher = SequenceMatcher.new("gggr", "gggr")
    assert_equal "gggr", matcher.guess
  end

  def test_it_can_match_sequences
    matcher = SequenceMatcher.new("gggr", "gggr")
    assert matcher.match?

    matcher = SequenceMatcher.new("gggr", "bbyr")
    refute matcher.match?
  end

  def test_it_can_return_number_of_matching_letters
    matcher = SequenceMatcher.new("gggr", "yyry")
    assert_equal 1, matcher.match_count
  end

  def test_another_match_count
    matcher = SequenceMatcher.new("gggr", "ygry")
    assert_equal 2, matcher.match_count
  end

  def test_yet_another_match_count
    matcher = SequenceMatcher.new("ygbr", "ybry")
    assert_equal 3, matcher.match_count
  end
end
