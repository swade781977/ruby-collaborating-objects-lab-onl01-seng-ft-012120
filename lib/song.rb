require 'pry'
class Song 
  @@all = []
  attr_accessor :name, :artist, :genre 
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all 
  end
  
  def self.new_by_filename(file)
    file = file.split(" - ")
  
    a = artist_name=(file[0]) 
    a = Song.new("#{file[1]}")
    a.artist = a
    genre = file[2].gsub!(".mp3", "")
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    
  end
end