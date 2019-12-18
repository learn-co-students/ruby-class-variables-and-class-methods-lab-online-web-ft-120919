class Song 
  attr_accessor :name, :artist, :genre
  
  @@count = 0 
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist
    @@artists.push(artist)
    @genre = genre 
    @@genres.push(genre)
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
  
  def self.array_count(array_arg)
    array_arg.reduce({}) do |memo, array_val|
      if memo[array_val] == nil 
        memo[array_val] = 0 
      end 
      memo[array_val] += 1 
      memo
    end 
  end 
  def self.genre_count
    array_count(@@genres)
  end 
  def self.artist_count
    array_count(@@artists)
  end 
end 