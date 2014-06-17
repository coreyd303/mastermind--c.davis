
# some possibly helpful code to look at (This is Jeffs, DON"T USE IT!!!)
class SequenceGenerator

  attr_reader :length, :pool
  def initialize(length, pool)
    @length = length
    @pool = pool
  end

  def generate
    master_sequence = (0...length).collect{pool.sample}.join
    Sequence.new(master_sequence)
    #puts "I've created a new master sequence..."
  end
end

class Sequence
  attr_reader :master_sequence

  def initialize(master_sequence)
    @master_sequence = master_sequence
  end
end
