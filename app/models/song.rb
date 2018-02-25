class Song < ApplicationRecord
  validates :title, :artist_id, presence: true

  has_one :artist

  def self.find_by_title(songTitle)
    @songs = Song.find(:all, :condition => ['title=?', songTitle]);

    if @songs
      return @songs
    end

    nil
  end
end
