# FIFO
# (first in first out)

class Queue
  def initialize
    @store = Array.new
  end

  def dequeue
    # taking the first "thing" off
    # look up shift
    # lunch line, the first person gets out of the line.
    @store.shift
  end

  def enqueue(element)
    # putting something into the queue
    # lunch line you get in the back of the line
    @store << element
  end

  def size
    @store.length
  end

  def empty?
    size == 0
  end
end 
