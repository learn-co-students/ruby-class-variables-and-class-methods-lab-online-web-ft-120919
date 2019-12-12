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
  end #init

  def self.count
    @@count
  end #self.count

  def self.genres
    @@genres.uniq
  end #self.genres

  def self.artists
    @@artists.uniq 
  end #self.artists

  def self.genre_count
    genre_hash = {}
    @@genres.each do |genre|
      if !genre_hash.keys.include?(genre)
        genre_hash[genre] = 1 
      else
        genre_hash[genre] += 1
      end #if
    end #each
    genre_hash 
  end #self.genre_count

  def self.artist_count
    artist_hash = {}
    @@artists.each do |artist|
      if !artist_hash.keys.include?(artist)
        artist_hash[artist] = 1 
      else
        artist_hash[artist] += 1
      end #if
    end #each
    artist_hash 
  end 

end #class