class MusicImporter
  attr_accessor :file_path
  def initialize(file_path)
    @file_path = file_path
  end
  def files
    @files = Dir.glob("#{file_path}/*.mp3").collect{ |f| f.gsub("#{file_path}/", "") }
  end
  def import
    files.each {|file| Song.create_file_filename(file)}
  end
end
