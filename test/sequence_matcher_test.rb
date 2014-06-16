gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/sequence_matcher'

class SequenceMatcherTest < Minitest::Test

  def test_it_has_a_master_sequence
    matcher = SequenceMatcher.new("rgby")
    assert_equal "rgby", matcher.master_sequence
  end

  def test_it_can_have_dynamic_master_sequence
    matcher1 = SequenceMatcher.new("absf")
    assert_equal "absf", matcher1.master_sequence
    matcher2 = SequenceMatcher.new("rrgy")
    assert_equal "rrgy", matcher2.master_sequence
  end

  def

end
