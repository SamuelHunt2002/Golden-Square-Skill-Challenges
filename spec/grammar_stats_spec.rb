require "grammar_stats"

RSpec.describe GrammarStats do
  describe "Testing the check function" do
    grammar_stats = GrammarStats.new

    it "Returns true when there is a capital letter at the start, and punctuation at the end" do
      expect(grammar_stats.check("Hello how are you?")).to eq true
    end

    it "Returns false when there is a capital letter at the start, no punctuation at the end" do
      expect(grammar_stats.check("Hello how are you")).to eq false
    end

    it "Returns false when there is no capital letter at the start, a punctuation at the end" do
      expect(grammar_stats.check("hello how are you!")).to eq false
    end

    it "Returns false when there is no capital letter at the start, and no punctuation at the end" do
      expect(grammar_stats.check("hello how are you")).to eq false
    end

    it "Returns false for hello" do
        expect(grammar_stats.check("Hello")).to eq false
      end
  end

  describe "Testing the percentage good method" do
    it "Returns 50% when half have passed" do
      grammar_stats = GrammarStats.new
      grammar_stats.check("Wow this is cool!")
      grammar_stats.check("Hello")
      expect(grammar_stats.percentage_good).to eq 50
    end

    it "Returns 0 when all have failed" do
      grammar_stats = GrammarStats.new
      grammar_stats.check("Wow this is cool")
      grammar_stats.check("wow this is amazing")
      expect(grammar_stats.percentage_good).to eq 0
    end

    it "Returns 100% when all have passed" do
      grammar_stats = GrammarStats.new
      grammar_stats.check("Wow this is cool!")
      grammar_stats.check("Wow this is amazing!")
      grammar_stats.check("This is so clever.")
      expect(grammar_stats.percentage_good).to eq 100
    end
  end
end
