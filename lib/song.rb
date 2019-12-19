class Song
  
  attr_accessor :name, :artist, :genre
  
  @@artists = []
  @@genres = []
  @@count = 0
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
    @@count += 1
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.artist_count
    artists = {}
    @@artists.each do |a|
      if artists.keys.include?(a)
        artists[a] += 1
      else
        artists[a] = 1
      end
    end
    artists
  end
      
  def self.genre_count
    genres = {}
    @@genres.each do |g|
      if genres.keys.include?(g)
        genres[g] += 1
      else
        genres[g] = 1
      end
    end
    genres
  end
  
end
