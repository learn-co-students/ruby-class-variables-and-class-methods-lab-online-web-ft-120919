require_relative "../lib/song.rb"

class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @@artists << artist
        @genre = genre
        @@genres << genre
        @@count += 1
    end

    def self.count
        @@count 
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    # genre_count << @@genres.tally # undefined argument

        # genre_count = {}
        # @@genres.each {|number_of_genre| genre_count[number_of_genre] += 1}
        # genre_count(0) =
        # genre_count ={
        #     genre => number_of_genre,
        # }

        #genre_count = {}
        # @@genres.each do |genre|
        #     if genre_count[genre] 
        #         genre_count += 1
        #     else
        #         genre_count[genre] = 1
        #     end
        # end
        
        # genre_count

    def self.genre_count
        genre_count = Hash.new(0)
        @@genres.each{|number_of_genre| genre_count[number_of_genre] +=1}
        genre_count

    end

    def self.artist_count
        artist_count = Hash.new(0)
        @@artists.each{|number_of_songs| artist_count[number_of_songs] +=1}
        artist_count
        # artist_count = {}
        # @@artists.each do |artist|
        #     if artist_count[artist]
        #         artist_count[artist] += 1
        #     else 
        #         artist_count[artist] = 1
        # end      
    end

end
