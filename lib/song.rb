require "pry"

class Song

    @@count = 0
    @@artists = [].uniq
    @@genres = [].uniq 

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << self.artist
        @@genres << self.genre
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

   def self.genre_count #count of genres on the class method 
    genre_hash = {}
        @@genres.each do |genre|
            if genre_hash[genre]
                genre_hash[genre] += 1
            else
            genre_hash[genre] = 1
        end
    end 
    genre_hash
   end 

   def self.artist_count
    artist_hash = {}
        @@artists.each do |artist|
            if artist_hash[artist]
                artist_hash[artist] += 1
            else 
                artist_hash[artist] = 1
            end
        end 
        artist_hash
    end 



end
