class Genre
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

  def self.destroy_all
    self.all.clear
  end

  def self.create(name)
    new_genre = Genre.new(name)
    new_genre.save
  end
end
