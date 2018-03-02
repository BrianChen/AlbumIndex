class Album < ApplicationRecord
  validates :title, presence: true

  def self.find_by_title(title)
    return nil if title == ''

    @albums = Album.where("lower(title) like ?", "%#{title.downcase}%")

    if @albums.empty?
      return nil
    else
      album_ids = @albums.map { |album| album.id }
      return album_ids
    end
  end
end
