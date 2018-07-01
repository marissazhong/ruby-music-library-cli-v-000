class MusicImporter
  attr_accessor :file_path
  @@all = []
  def initialize(file_path)
    @file_path = file_path
    @@all << self
  end
end
