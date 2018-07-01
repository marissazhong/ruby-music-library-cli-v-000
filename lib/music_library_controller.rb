class MusicLibraryController
  attr_accessor :path
  def initialize(path='./db/mp3s')
    @path = path
    MusicImporter.new(@path).import
  end
  def call
    puts "Welcome to your music library!"
    puts "To list all of your songs, enter 'list songs'."
    puts "To list all of the artists in your library, enter 'list artists'."
    puts "To list all of the genres in your library, enter 'list genres'."
    puts "To list all of the songs by a particular artist, enter 'list artist'."
    puts "To list all of the songs of a particular genre, enter 'list genre'."
    puts "To play a song, enter 'play song'."
    puts "To quit, type 'exit'."
    puts "What would you like to do?"
    input = ""
    until input == 'exit'
      input = gets.strip
      if input == 'list songs'
        list_songs
      elsif input == 'list artists'
        list_songs_by_artists
      elsif input == 'list genres'
        list_songs_by_genres
      elsif input == 'list artist'
        list_artist
      elsif input == 'list genre'
        list_genre
      elsif input == 'play song'
        play_song
      end
    end
  end
  def list_songs
    song_names = Song.all.map {|song| song.name}
    puts song_names
    #song_names.sort.each_with_index {|song, i| puts "#{i+1}. #{song}"}
  end
  def list_songs_by_artists

  end
  def list_songs_by_genres

  end
  def list_artist(artist)

  end
  def list_genre(genre)

  end
  def play_song(song)

  end
end
