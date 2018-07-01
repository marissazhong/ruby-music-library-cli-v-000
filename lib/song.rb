class Song
  attr_accessor :name
  attr_reader :artist
  @@all = []

  def initialize(name, artist=nil)
    @name = name
    @artist = artist
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.destroy_all
    self.all.clear
  end

  def self.create(name)
    new_song = Song.new(name)
    new_song.save
    new_song
  end

  def artist=(artist)
    @artist = artist
    new_artist = Artist.add_song(self)
  end

end
