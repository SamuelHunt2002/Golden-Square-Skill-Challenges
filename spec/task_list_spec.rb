require "task_list"

RSpec.describe TaskList do
  describe "Adding and Removing Tasks" do
    tasklist = TaskList.new()
    it "Adds an initial task to the list" do
      tasklist.add("Give the cat attention")
      expect(tasklist.list_of_tasks).to eq ["Give the cat attention"]
    end

    it "Adds successive tasks to the list" do
      tasklist.add("Buy some milk")
      tasklist.add("Buy mum a card")
      expect(tasklist.list_of_tasks).to eq ["Give the cat attention", "Buy some milk", "Buy mum a card"]
    end

    it "Removes a task from the list" do
      tasklist.complete("Buy some milk")
      expect(tasklist.list_of_tasks).to eq ["Give the cat attention", "Buy mum a card"]
    end
  end
end
