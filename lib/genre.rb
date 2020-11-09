class Genre
    attr_accessor :name, :artist, :genre

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        #Finds (aka selects) songs belong to genre
        Song.all.select {|song| song.genre == self}
    end

    def artists
        #Same as songs but with artists
        # binding.pry
        songs.collect {|song| song.artist}
    end

end



