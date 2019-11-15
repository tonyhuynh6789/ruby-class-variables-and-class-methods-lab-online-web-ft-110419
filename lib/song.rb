class Song

@@count = 0
def self.count 
  @@count
end 

@@artists = []
def self.artists
  @@artists.uniq
end 


@@genres = []
def self.genres
  @@genres.uniq
end 


def self.genre_count 
  @@genres.inject(Hash.new(0)) {|total, genre| total[genre] += 1 ;  total}
end

def self.artists_count
  @@artists.inject(Hash.new(0)) {|total,artist| total[artist] += 1; total}
end 

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @@artists << artist
  @genre = genre
  @@genres << genre
  @@count += 1
end 

attr_accessor :name, :artist, :genre

  
end 
