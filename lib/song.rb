class Song 
  @@count = 0
  @@genres = []
  @@artists = []
  attr_accessor :name, :artist, :genre 
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist
    @genre = genre
    @@count += 1 
    @@genres << self.genre
    @@artists << self.artist
  end
  
  def self.count
    @@count
  end
  
  def self.genres 
    @@genres & @@genres
  end 
  
  def self.artists
    @@artists & @@artists
  end
  
  def self.genre_count
    genre_hash = {}
    @@genres.each { |gen|
      genre_hash[gen] = 0 if !genre_hash.keys.include?(gen)
      genre_hash[gen] += 1 
    }
    genre_hash
  end
  
  def self.artist_count
    artist_hash = {}
    @@artists.each { |art|
      artist_hash[art] = 0 if !artist_hash.keys.include?(art)
      artist_hash[art] += 1
    }
    artist_hash
  end
    
end 
