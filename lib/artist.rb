require 'pry'
require_relative 'song'

class Artist
    attr_reader :name, :songs

    @@all = []


    def initialize(name)
        @name = name
        # @genre = genre
        @@all << self
        @songs = []
        @genres = []
    end

    def self.all
        @@all
    end

    # def songs
    #     @songs
    # end

    def songs
        Song.all.select {|song| song.artist == self}
    end
    
    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def genres 
        songs.collect {|song| song.genre}
    end

end


