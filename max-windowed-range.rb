def windowed_max_range(array, window_size)
  current_max_range = nil

  array.each_index do |i|
    current_window = array[i..-1].take(window_size)
    break if current_window.size < window_size
    max_range = current_window.max - current_window.min

    if current_max_range.nil? || max_range > current_max_range
      current_max_range = max_range
    end
  end
  current_max_range

  # i = 0
  # while i < array.size - (window_size - 1)
  #   window = array[i...i + window_size]
  #
  #   i += 1
  # end
end

p windowed_max_range([1, 3, 2, 5, 4, 8], 5) # => 6
p windowed_max_range([1, 0, 2, 5, 4, 8], 3) # => 5


class MyStack
  def initialize
    @store = []
  end

  def self.pop
    @store.pop
  end

  def push(num)
    @store.push(num)
  end

  def peek
    @store[-1]
  end

  def size
    @store.size
  end

  def empty?
    @store.empty
  end

  def max
    min = self.pop
    max = min


    max_value = nil
    while @store.size > 0

    end
  end
end

class StackQueue
  def initialize
    @stack = MyStack.new

  end

  def enqueue(item)
    @stack.push(item)
  end

  def dequeue
    stack2 = MyStack.new

    @stack.size.times{stack2.push(@stack.pop)}
    a = stack2.pop
    stack2.size.times{@stack.push(stack2.pop)}
    a
  end

  def size
    @stack.size
  end

  def empty?
    @stack.empty?
  end
end
