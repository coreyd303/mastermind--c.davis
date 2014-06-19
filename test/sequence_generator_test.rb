gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/sequence_generator'

class SequenceGeneratorTest < Minitest::Test

  def test_it_can_generate_a_sequence
    assert SequenceGenerator.new(4, ["r","g","b","y"])
  end

  def test_each_new_sequence_is_different
    s = SequenceGenerator.new(4, ["r","g","b","y"])
    s1 = s.generate
    s2 = s.generate
    assert s1 != s2
  end

end
