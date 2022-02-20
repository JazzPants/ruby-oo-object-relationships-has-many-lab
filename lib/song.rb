class Song
  attr_accessor :artist, :name

  #put many songs into all array
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    #if artist exists, return artist.name
    artist.name if artist
  end
end
