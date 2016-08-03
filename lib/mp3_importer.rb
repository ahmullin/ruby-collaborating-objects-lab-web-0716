require 'pry'
class MP3Importer

attr_accessor :path

  def initialize(path)
    @path = path
    @files = []
  end

  def files
    files_array = Dir.entries(path)
    @files = files_array.select do |file|
      file.include?(".mp3")
    end
  end

  def import
    self.files.each do |file|
      Song.new_by_filename(file)
      # binding.pry
    end
  end


end
