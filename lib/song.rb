require 'pry'

class Song
  attr_accessor :name , :artist , :genre

  @@count=0
  @@genres=[]
  @@artists=[]
  @@genre_count={}
  @@artist_count={}
  def initialize(n,a,g)
    @name=n
    @artist=a
    @genre=g
    @@count+=1
    @@genres<<g
    @@artists<<a
    # increment genre count
    if(@@genre_count.key?("#{g}"))
      @@genre_count["#{g}"]+=1
    else
      @@genre_count["#{g}"]=1
    end
    # increment the artist count
    if(@@artist_count.key?("#{a}"))
      @@artist_count["#{a}"]+=1
    else
      @@artist_count["#{a}"]=1
    end
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

  def self.genre_count
    @@genre_count
  end

  def self.artist_count
    @@artist_count
  end

end

=begin
s= Song.new("Kingdom of Heaven", "Arthur", "pop")
s.name
s.artist
s.genre
#binding.pry
s.genre_count
=end
