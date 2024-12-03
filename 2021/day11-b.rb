#!/Users/alexggordon/.rbenv/shims/ruby
require 'active_support/all'
require 'pry'
require 'json'

# require 'YAML'
input = <<END
3172537688
4566483125
6374512653
8321148885
4342747758
1362188582
7582213132
6887875268
7635112787
7242787273
END

# input = <<END
# 5483143223
# 2745854711
# 5264556173
# 6141336146
# 6357385478
# 4167524645
# 2176841721
# 6882881134
# 4846848554
# 5283751526
# END

input = input.split("\n").map { |e| e.chars.map(&:to_i) }

class World
  def initialize(input)
    @input = input
    @cells = []
    input.length.times do |x|
      @cells.push([])
      input.first.length.times do |y|
        @cells[x].push(Cell.new(self, x, y, input[y][x]))
      end
    end
    @flashes = 0
  end

  def increment_flashes
    @flashes += 1
  end

  def total_flashes
    @flashes
  end

  def input
    @input
  end

  def cells
    @cells.flatten
  end

  def cell_at(x, y)
    if @cells[x]
      @cells[x][y]
    end
  end

  def next_cycle
    cells.each do |cell|
      cell.increment
    end

    cells.each do |cell|
      cell.flash! if cell.should_flash?
    end

    cells.each do |cell|
      cell.reset!
    end
  end
end

class Cell
  attr_reader :world, :x, :y, :value, :flashed
  def initialize(world, x, y, value)
    @world, @x, @y, @value = world, x, y, value
    @flashed = false
  end

  def increment
    @value += 1
  end

  def should_flash?
    @value > 9 && !@flashed
  end

  def neighbours
    neighbours = []
    neighbours.push(@world.cell_at(self.x - 1, self.y - 1)) if (self.x - 1 > -1 && self.y - 1 > -1)
    neighbours.push(@world.cell_at(self.x - 1, self.y)) if (self.x - 1 > -1)
    neighbours.push(@world.cell_at(self.x - 1, self.y + 1)) if (self.x - 1 > -1 && self.y + 1 < @world.input.count)

    neighbours.push(@world.cell_at(self.x, self.y - 1)) if (self.y - 1 > -1)
    neighbours.push(@world.cell_at(self.x, self.y + 1)) if (self.y + 1 < @world.input.count)

    neighbours.push(@world.cell_at(self.x + 1, self.y - 1)) if (self.x + 1 < @world.input.first.count && self.y - 1 > -1)
    neighbours.push(@world.cell_at(self.x + 1, self.y)) if (self.x + 1 < @world.input.first.count)
    neighbours.push(@world.cell_at(self.x + 1, self.y + 1)) if (self.x + 1 < @world.input.first.count && self.y + 1 < @world.input.count)

    neighbours
  end

  def flash!
    # @value = 0
    @flashed = true
    @world.increment_flashes
    neighbours.each do |n|
      n.increment
      n.flash! if n.should_flash?
    end
  end

  def reset!
    if @flashed == true
      @flashed = false
      @value = 0
    end
  end
end

def print_world(world)
  world.input.count.times do |y|
    row = []
    world.input.first.count.times do |x|
      row.push(world.cell_at(x, y))
    end
    puts "#{row.map(&:value).join(" ")}\n"
  end
end

w = World.new(input)
1000.times do |i|
  curr = w.total_flashes

  w.next_cycle
  if curr + 100 == w.total_flashes 
    puts i + 1 
    break
  end
end
# puts w.total_flashes
# print_world(w)
# puts
# puts

# w.next_cycle/
# puts w.total_flashes
# print_world(w)

