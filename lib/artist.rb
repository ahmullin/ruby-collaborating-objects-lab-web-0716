class Artist

attr_accessor :name, :songs

@@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    songs << song
    song.artist = self
    song
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
     if all.detect do |artist|
        artist.name == name
      end
    else
      Artist.new(name)
    end
    # binding.pry
  end

  def print_songs
    songs.each do |song|
      puts song.name
    end
  end


end
