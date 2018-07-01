class MusicImporter
  attr_reader :fpath
  def initialize(path)
    @path = path
  end
  def files
    @files ||= Dir.glob("#{ath}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  end
  def import
    files.each {|file| Song.create_from_filename(file)}
  end
end
