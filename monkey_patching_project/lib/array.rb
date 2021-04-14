# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  def span
    return nil if self == []
    self.max - self.min
  end

  def average
    return nil if self == []
    (self.sum * 1.0) / self.length
  end
end
