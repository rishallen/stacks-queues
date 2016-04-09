# Stack is a class
# the Array is the underlining structure in the class that holds the collection of the "things"
# these are the methods that the class stack has: pop, push, size, empty
# LIFO

class Stack
  def initialize
    @store = Array.new
  end

  def pop
    # taking the last "thing" off
    # this happens to be oranges
    @store.pop

    #[5] pry(main)> s.push("pears")
    # => ["apples", "pears"]
    # [6] pry(main)> s.push("oranges")
    # => ["apples", "pears", "oranges"]
    # [7] pry(main)> s.pop
    # => "oranges"
    # [8] pry(main)> puts s.inspect
    # #<Stack:0x007fc61b0707b8 @store=["apples", "pears"]>
    # => nil
    # [9] pry(main)>

  end

  def push(element)
    # put element into the stack
    @store << element

    # RA:~/C5/exercises/stacks-queues🐝 $ pry -r ./stack.rb
    # [1] pry(main)> s = Stack.new
    # => #<Stack:0x007f927b8e0188 @store=[]>
    # [2] pry(main)> s.push("apples")
    # => ["apples"]
    # [3] pry(main)> puts s.inspect
    # #<Stack:0x007f927b8e0188 @store=["apples"]>
  end

  def size
    @store.length
    # [5] pry(main)> s.push("apples")
    # => ["oranges", "pears", "apples"]
    # [6] pry(main)> s.push("grapes")
    # => ["oranges", "pears", "apples", "grapes"]
    # [7] pry(main)> s.size
    # => 4
    # [8] pry(m
  end

  def empty?
    size == 0
  end

  def top
    # is the last thing you put in (LIFO)
    @store.last
  end
end
