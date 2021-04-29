class Board
    attr_reader :size
    
    def initialize(n)
        @grid = Array.new(n){Array.new(n, :N)}
        @size = n * n
    end

    def self.print_grid(grid)
      grid.each do |row|
          puts row.join(" ")
      end
    end

  def [](arr)
    @grid[arr[0]][arr[1]]
  end

  def []=(pos, value)
    @grid[pos[0]][pos[1]] = value
  end

  def num_ships
    @grid.flatten.count { |ele| ele == :S}
  end

  def attack(pos)
    if self[pos] == :S
        self[pos] = :H
        p "you sunk my battleship!"
        return true
    else
        self[pos] = :X
        return false
    end
  end

  def place_random_ships
    num = @size / 4
    n = Math.sqrt(@size)
    while num > 0
        pos1 = rand(n)
        pos2 = rand(n)
        if self[[pos1, pos2]] != :S
            self[[pos1, pos2]] = :S
            num -= 1
        end
    end
  end

  def hidden_ships_grid
    @grid.map do |row|
        row.map do |ele|
            if ele == :S
                :N
            else
                ele
            end
        end
    end
  end

  def cheat
    Board.print_grid(@grid)
  end

  def print
    Board.print_grid(hidden_ships_grid)
  end

end
