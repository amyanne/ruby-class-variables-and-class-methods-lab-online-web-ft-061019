require 'pry'
class Song 
  attr_accessor :name, :artist, :genre 
  @@count = 0
  @@artists = []
  @@genres = []
  def initialize(name, artist, genre)
    @@count += 1
    @@artists << artist
    @@genres << genre
    @name = name
    @artist = artist
    @genre = genre
  end
  def name
    @name
  end 
  def artist
    @artist
  end 
  def genre
    @genre
  end
  def self.count 
    @@count
  end
  def self.artists 
    artist_array = []
    artist_array = @@artists
    artist_array.uniq
  end
  def self.genres
    genre_array = []
    genre_array = @@genres
    genre_array.uniq
    
  end
  def self.genre_count
    genre_hash = {}
    num = 0
    @@genres.each do |genre|
    if genre_hash.keys.include?(genre)
    else
      binding.pry 
    genre_hash = {genre => @@genres.count(genre)}
  end
  end
    genre_hash
    end 
  def self.artist_count
    @@artists.count(@artist)
  end 
end 
