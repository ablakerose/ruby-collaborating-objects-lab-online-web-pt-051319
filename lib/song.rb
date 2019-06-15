require 'pry'
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    #"Michael Jackson - Black or White - pop.mp3"
    artist, name = filename.split(" - ")
    name = self.new(name)
  end


end
