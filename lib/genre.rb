require_relative 'artist'
require_relative 'song'

class Genre
    GENRES = []
    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        GENRES << self
        @@all << self
        @songs = []
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|song| song.genre == self}
        # @songs
    end

    def add_song(song)
        @songs << song
        song.genre = self
    end
    
    def artists
    songs.collect {|song| song.artist}
    end
end