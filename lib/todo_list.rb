class TodoList
  def initialize
    @list = []
  end

  def add(todo) # todo is an instance of Todo
    # Returns nothing
    @list << todo
  end

  def incomplete
    # Returns all non-done todos
    incompletes = @list.select{|entry| entry.done? == false}
    return incompletes.map {|entry| entry.task}
  end

  def complete
    # Returns all complete todos
    incompletes = @list.select{|entry| entry.done? == true}
    return incompletes.map {|entry| entry.task}
  end

  def give_up!
    # Marks all todos as complete
    @list.each{|entry| entry.mark_done!}
  end

  attr_accessor :list
end
