class TaskList 
    def initialize
        @list_of_tasks = []
    end

    def add(task)
        @list_of_tasks << task 
    end 

    def complete(task)
        @list_of_tasks.delete(task)
    end 
    attr_accessor :list_of_tasks 
end 