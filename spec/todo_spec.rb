require 'todo'
require 'todo_list'

RSpec.describe Todo do 
    describe "Todo Checking" do
        it "Initialises a new task, returning it when called for" do
            todo = Todo.new("Feed the cats")
            expect(todo.task).to eq "Feed the cats"
        end

        it "Marks Done when done" do
            todo = Todo.new("Feed the cats")
            todo.mark_done!
            expect(todo.done).to eq true 
        end

        it "Correctly returns true when a task is done" do
            todo = Todo.new("Feed the cats")
            todo.mark_done!
            expect(todo.done?).to eq true 
        end

        it "Correctly returns false when a task is not done" do
            todo = Todo.new("Feed the cats")
            expect(todo.done?).to eq false 
        end
    end
end