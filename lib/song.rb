require 'pry'

class Song

attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song = self.new(filename)
    song.name = filename.split(" - ")[1]
    song.artist = Artist.find_or_create_by_name(filename.split(" - ")[0])
    # binding.pry
    song.artist.save unless song.artist.nil?
    song.artist.add_song(song) unless song.artist.nil?
  end

end
