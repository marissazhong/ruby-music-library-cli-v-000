class Song
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name

  end

  def self.all
    @@all
  end

  def self.save
    self.all << self
  end

  

end
