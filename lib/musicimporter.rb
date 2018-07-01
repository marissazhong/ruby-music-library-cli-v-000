class MusicImporter
  attr_accessor :file_path
  @@all = []
  def initialize(file_path)
    @file_path = file_path
    @@all << self
  end
  def files
    @@all
  end
  def self.import

  end
end
