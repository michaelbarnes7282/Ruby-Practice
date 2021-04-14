# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  def span
    return nil if self == []
    self.max - self.min
  end
end
