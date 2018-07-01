class Song
  attr_accessor :name
  attr_reader :artist, :genre
  @@all = []

  def initialize(name, artist=nil, genre=nil)
    @name = name
    self.artist = artist if artist
    self.genre = genre if genre
  end

  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end

  def genre=(genre)
    @genre = genre
    genre.add_song(self)
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

  def self.find_by_name(name)
    all.detect {|song| song.name == name}
  end

  def self.find_or_create_by_name(name)
    find_by_name(name) ? find_by_name(name) : create(name)
  end

  def self.new_from_filename(file_name)
    split = file_name.split(/[" - "]/)
    artist_name, song_name, genre_name = split[0], split[1], split[2].gsub(".mp3","")
    new_song = Song.new(song_name)
    new_song.artist = artist_name
    new_song.genre = genre_name
  end

  def self.create_from_filename(file_name)
    new_song = new_from_filename(file_name)
    new_song.save
  end
end
