require_relative '../lib/sequence'

class SequenceGenerator

  attr_reader :length, :pool
  def initialize(length, pool)
    @length = length
    @pool = pool
  end

  def generate
    secret = (0...length).collect{pool.sample}.join
    Sequence.new(secret)
  end
end
