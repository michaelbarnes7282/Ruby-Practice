class Board
  attr_reader :size

  def initialize(n)
    @grid = Array.new(n){Array.new(n, :N)}
    @size = n * n
  end

  def [](arr)
    @grid[arr[0]][arr[1]]
  end

  def []=(pos, value)
    @grid[pos[0]][pos[1]] = value
  end

  def num_ships
    count = 0
    @grid.each do |sub|
        sub.each do |g|
            count += 1 if g == :S
        end
    end
    count
  end
end
