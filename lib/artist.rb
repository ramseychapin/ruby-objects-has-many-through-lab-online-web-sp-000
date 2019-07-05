class Artist

  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    
  end

  def songs

  end

  def genres
    self.songs.collect do |song|
      song.genre
    end
  end
end
