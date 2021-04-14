# Monkey-Patch Ruby's existing Array class to add your own custom methods
require "byebug"
class Array
  def span
    return nil if self == []
    self.max - self.min
  end

  def average
    return nil if self == []
    (self.sum * 1.0) / self.length
  end

  def median
    return nil if self == []
    self.sort!
    if self.length.even?
        (self[self.length/2] + self[(self.length/2) - 1]) / 2.0
    else
        self[self.length/2]
    end
  end

  def counts
    count = Hash.new{0}
    self.each { |ele| count[ele] += 1}
    count
  end

  def my_count(val)
    count = 0
    self.each { |ele| count += 1 if ele == val }
    count
  end

  def my_index(val)
    self.each_with_index { |ele, i| return i if ele == val }
    nil
  end

end
