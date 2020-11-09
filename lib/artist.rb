require 'pry'

class Artist 
    attr_accessor :name, :genre, :artist

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end
        
    def self.all
        @@all
    end

    def songs 
        #Finds (aka selects) artist's songs
        Song.all.select {|song| song.artist == self}
    end

    def new_song(name, genre)
        # binding.pry
        Song.new(name, self, genre)
    end

    def genres
        #Same as songs but with genres
        # binding.pry
        songs.collect {|song| song.genre} 
    end



end