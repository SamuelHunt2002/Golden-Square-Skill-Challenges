require "diary"

RSpec.describe DiaryEntry do
  diary_entry = DiaryEntry.new("9th November", "I had a great session with Caroline working as a team, while Ruby wanted to make our lives a misery")
  it "Returns title of diary entry" do
    expect(diary_entry.title).to eq "9th November"
  end

  it "Returns content of diary entry" do
    expect(diary_entry.contents).to eq "I had a great session with Caroline working as a team, while Ruby wanted to make our lives a misery"
  end

  it "Counts the amount of words correctly" do
    expect(diary_entry.count_words).to eq 20
  end

  it "Correctly works out reading time" do
    expect(diary_entry.reading_time(10)).to eq 2
  end

  it "Correctly executes first pass of reading chunk" do
    expect(diary_entry.reading_chunk(2, 2)).to eq "I had a great"
  end

  it "Correctly executes second pass of reading chunk" do
    expect(diary_entry.reading_chunk(2, 2)).to eq "session with Caroline working"
  end

  it "Cuts off at end before starting agian" do
    diary_entry.reading_chunk(10, 1)
    expect(diary_entry.reading_chunk(4, 1)).to eq "a misery"
  end

  it "Returns to the beginning when finished" do
    expect(diary_entry.reading_chunk(3, 2)).to eq "I had a great session with"
  end
end
