
class SequenceGenerator

  attr_reader :length, :pool
  def initialize(length, pool)
    @length = length
    @pool = pool
  end

  def generate
    secret = (0...length).collect{pool.sample}.join
    Sequence.new(secret)
    #puts "I've created a new master sequence..."
  end
end

class Sequence
  attr_reader :secret

  def initialize(secret)
    @secret = secret
  end
end
