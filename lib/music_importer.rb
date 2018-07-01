class MusicImporter
  attr_accessor :file_path
  @@all = []
  def initialize(file_path)
    @file_path = file_path
  end
  def files
    @@all
  end
  def self.import
    files = Dir.glob("#{file_path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
    puts files
    #files.collect {|file| Song.new()}
  end
end
