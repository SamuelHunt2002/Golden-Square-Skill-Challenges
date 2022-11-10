class MusicDatabase 
    def initialize 
        @song_list = []
    end 

    def add(song)
        @song_list << song
    end 

    def show_songs
        return "The songs you have are: " + song_list.join(", ") +"."
    end 

    attr_accessor :song_list
end 
