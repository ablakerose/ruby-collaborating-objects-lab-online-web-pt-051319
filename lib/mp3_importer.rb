require 'pry'
class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path
  end

  def files
    binding.pry
    #return all file names in given path as an array
    Dir.entries(path)
  end


end
