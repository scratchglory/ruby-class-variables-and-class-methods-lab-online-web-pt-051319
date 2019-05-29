# song has a name, artist, and genre 

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
   
   def self.genres
     @@genres.uniq 
   end
   
   def self.artists
     @@artists.uniq
   end
   
   def self.genre_count
     genre_hash = Hash.new(0)   # make argument 0
     @@genres.each {|genre| genre_hash[genre] += 1} #  every time we cross the genre, we add one
     genre_hash
     
    # binding.pry
    
   end
 
   def self.artist_count
     artists_hash = Hash.new(0)
     @@artists.each {|artist| artists_hash[artist] += 1}  # every time we cross the artist, we add one
     artists_hash
   end
   
end