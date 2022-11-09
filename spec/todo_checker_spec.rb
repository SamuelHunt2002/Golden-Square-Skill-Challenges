require 'todo_checker'

RSpec.describe "TODO Checker" do
    it "Returns true when #TODO is in the text" do
        expect(string_check("Hello this is my #TODO list")).to eq true
    end

    it "Returns false when string is empty" do
        expect(string_check("")).to eq false
    end

    it "Returns false when string contains #TODO but in wrong order" do
        expect(string_check("I'm going TO #DO a dance")).to eq false
    end

    it "Returns false when string doesn't contain #TODO but has chars" do
        expect(string_check("blah blah blah")).to eq false
    end

    it "Returns false when todo is lowercase" do
        expect(string_check("#todo")).to eq false
    end
end