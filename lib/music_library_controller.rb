class MusicLibraryController
  attr_accessor :path
  def initialize(path='./db/mp3s')
    @path = path
    MusicImporter.new(@path).import
  end
  def call
    puts "Welcome to your music library!"
    puts "To list all of your songs, enter 'list songs'."
    puts "To list all of your artists, enter 'list artists'."

    input = ""
    until input = 'exit'
      input = gets.strip
      if input == 'list songs'
        list_songs
      elsif input == 'list artists'
        list_artists
      end
    end
  end
  def list_songs

  end
  def list_artists

  end
end
