require 'pry'
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    #"Michael Jackson - Black or White - pop.mp3"
    artist, name = filename.split(" - ")
    song = self.new(name)
    song.artist_name =(artist)
    song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

end
