
# some possibly helpful code to look at (This is Jeffs, DON"T USE IT!!!)
class SequenceGenerator

  attr_reader :length, :pool
  def initialize(length, pool)
    @length = length
    @pool = pool
  end

  def generate
    code = (0...length).collect{pool.sample}.join
    Sequence.new(code)
    #puts "I've created a new master sequence..."
  end
end

class Sequence
  attr_reader :code

  def initialize(code)
    @code = code
  end
end

#s = Sequence.new(4, ["b", "g", "r", "y"])
