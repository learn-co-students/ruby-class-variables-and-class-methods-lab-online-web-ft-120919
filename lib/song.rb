class Song 
  
  def self.artist_count
    @@artists.inject(Hash.new(0)) { |total, i| total[i] += 1 ;total}
  end
  
  def self.artists
    @@artists.uniq
  end
  
  attr_accessor :name, :artist, :genre 
  def initialize(name, artist, genre)
    @name = name
    @artist = artist 
    @genre = genre
  end 
  
 end 
  
the_day = Song.new("The Day", "John Smith", "classic")
puts the_day.name
puts the_day.artist
puts the_day.genre
puts Song.count
Song.genres
Song.artists
Song.genre_count
Song.artist_count