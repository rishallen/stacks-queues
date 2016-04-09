require './Stack.rb'
require './Queue.rb'

class Hire
  attr_reader :waiting, :workers

  def initialize
    @waiting = Queue.new
    @workers = Stack.new
    # @new_employees = []
  end

  # this is using the enqueue method that adds to an array
  def new_employees(person)
    @waiting.enqueue(person)
  end

  # this method will take off the first 6 people in the array
  def hire(people)
    new_employees.shift(0..5)
  end

  # random method that will take the number and subtract from the @workers array
    def fire
      num = rand(1..10)
      num.times do
        a = @workers.store.last
        @workers.pop
        @waiting.new_employees(a)
      end
    end

end


job = Hire.new
job.new_employees(10)
job.hire(6)
# start with 10 people in the waiting list
# push them into the stack
# hire 6 employes
# go from there
