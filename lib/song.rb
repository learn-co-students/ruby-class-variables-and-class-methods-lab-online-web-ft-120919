require 'pry'
class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name 
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.artists
        unique_artist_array = []
        index = 0 
        while index < @@artists.length
            unique_artist_array << @@artists[index] unless unique_artist_array.include?(@@artists[index])
            index += 1
        end
        unique_artist_array
    end

    def self.genres
        unique_genre_array = []
        index = 0 
        while index < @@genres.length
            unique_genre_array << @@genres[index] unless unique_genre_array.include?(@@genres[index])
            index += 1
        end
        unique_genre_array
    end

    def self.genre_count
        genre_count_hash = {}
        @@genres.each do |genre|
            if !(genre_count_hash.key?(genre))
                genre_count_hash[genre] = 1
            else
                genre_count_hash[genre] += 1
            end
        end
        genre_count_hash
    end

    def self.artist_count
        artist_count_hash = {}
        @@artists.each do |artist|
            if !(artist_count_hash.key?(artist))
                artist_count_hash[artist] = 1
            else
                artist_count_hash[artist] += 1
            end
        end
        artist_count_hash
    end
    # binding.pry
end