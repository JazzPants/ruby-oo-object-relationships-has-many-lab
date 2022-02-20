class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song

    #let the song we added know it belongs to the specified artist instance
    #e.g. set the artist of the given song instance argument to this instance of Artist (e.g. drake Artist instance (where name is "Drake"))
    song.artist = self
  end

  #expose songs to public
  #select all songs in the Song class where the artist is == self (an instance of the specific Artist class)
  def songs
    #call all songs method from Song class
    Song.all.select { |song| song.artist == self }
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
  end

  def self.song_count
    Song.all.length
    #.size or .count works too
    #use .count if you need condition e.g. array.count { |i| i>5 }
  end
end
