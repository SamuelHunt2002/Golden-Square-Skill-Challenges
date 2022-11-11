require 'todo'
require 'todo_list'

RSpec.describe TodoList do
    describe 'Init' do
        
        it "Adds a new todo to the list" do 
            todolist = TodoList.new
            entry = Todo.new("Feed the cats")
            todolist.add(entry)
            expect(todolist.list).to eq [entry]
            
        end

        it "Adds multiple todos" do
            todolist = TodoList.new
            entry_one = Todo.new("Feed the cats")
            entry_two = Todo.new("Go for a haircut")
            entry_three = Todo.new("Clean the dishes")
            todolist.add(entry_one)
            todolist.add(entry_two)
            todolist.add(entry_three)
            expect(todolist.list).to eq ([entry_one,entry_two,entry_three])
        end
        
        it "Returns all non-done todos" do
            todolist = TodoList.new
            entry_one = Todo.new("Feed the cats")
            entry_two = Todo.new("Go for a haircut")
            entry_three = Todo.new("Clean the dishes")
            todolist.add(entry_one)
            todolist.add(entry_two)
            todolist.add(entry_three)
            entry_two.mark_done!
            expect(todolist.incomplete).to eq ["Feed the cats", "Clean the dishes"]
        end

        it "Returns all done todos" do
            todolist = TodoList.new
            entry_one = Todo.new("Feed the cats")
            entry_two = Todo.new("Go for a haircut")
            entry_three = Todo.new("Clean the dishes")
            todolist.add(entry_one)
            todolist.add(entry_two)
            todolist.add(entry_three)
            entry_one.mark_done!
            entry_three.mark_done!
            expect(todolist.complete).to eq ["Feed the cats", "Clean the dishes"]
        end
        it "Gives up correctly" do
            todolist = TodoList.new
            entry_one = Todo.new("Feed the cats")
            entry_two = Todo.new("Go for a haircut")
            entry_three = Todo.new("Clean the dishes")
            todolist.add(entry_one)
            todolist.add(entry_two)
            todolist.add(entry_three)
            todolist.give_up!
            expect(todolist.complete).to eq ["Feed the cats", "Go for a haircut", "Clean the dishes"]
        end
    end
end