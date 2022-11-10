require "music_database"

RSpec.describe MusicDatabase do
  describe "Test the add function"
  music_database = MusicDatabase.new()
  it "Adds a song to the list" do
    music_database.add("All I want for Christmas is you")
    expect(music_database.song_list).to eq ["All I want for Christmas is you"]
  end

  it "Adds multiple songs, keeping the original in list" do
    music_database.add("Jingle Bells")
    music_database.add("Sound of the Underground")
    expect(music_database.song_list).to eq ["All I want for Christmas is you", "Jingle Bells", "Sound of the Underground"]
  end
end

describe "Test the song-list function" do
    music_database = MusicDatabase.new()
    it "Shows songs in a lovely list" do 
    music_database.add("Jingle Bells")
    music_database.add("Sound of the Underground")
    expect(music_database.show_songs).to eq "The songs you have are: Jingle Bells, Sound of the Underground."
end
end 
