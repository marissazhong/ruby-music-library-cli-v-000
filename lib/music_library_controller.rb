class MusicLibraryController
  attr_accessor :path
  def initialize(path='./db/mp3s')
    @path = path
    MusicImporter.import
  end
  def call

  end
end
