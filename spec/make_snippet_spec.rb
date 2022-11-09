require 'make_snippet'

RSpec.describe "Make Snippet" do
    it "Returns the first five words" do
        expect(snippet("The quick brown fox jumps")).to eq "The quick brown fox jumps"
    end

    it "Adds ... if there are more than five words" do
        expect(snippet("Bloop boop do ba boop schwoop la loop")).to eq "Bloop boop do ba boop..."
    end
end