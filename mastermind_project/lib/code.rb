require "byebug"

class Code
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }

  attr_reader :pegs

  def self.valid_pegs?(arr)
    arr.all? { |c| POSSIBLE_PEGS.include? c.upcase }
  end

  def initialize(pegs)
    if Code.valid_pegs?(pegs)
      @pegs = pegs.map(&:upcase)
    else
      raise "Pegs are not valid"
    end
  end

  def self.random(length)
    ans = []
    length.times {ans << POSSIBLE_PEGS.keys.sample }
    Code.new(ans)
  end

  def self.from_string(string)
    Code.new(string.split(""))
  end

  def [](index)
    @pegs[index]
  end

  def length
    @pegs.length
  end

  def num_exact_matches(code)
    count = 0
    @pegs.length.times { |i| count += 1 if @pegs[i] == code.pegs[i] }
    count
  end

  def num_near_matches(code)
    count = 0
    @pegs.length.times { |i| count += 1 if (@pegs.include? code.pegs[i]) && (@pegs[i] != code.pegs[i]) }
    count
  end

  def ==(code)
    self.pegs == code.pegs
  end

end
