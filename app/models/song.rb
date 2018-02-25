class Song < ApplicationRecord
  validates :title, :artist_id, presence: true

  has_one :artist

  def self.find_by_title(song_title)
    @songs = Song.find(:all, :condition => ['title=?', song_title]);

    if @songs
      return @songs
    end

    nil
  end
end
