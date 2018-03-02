class Artist < ApplicationRecord
  validates :name, presence: true

  def self.find_by_name(name)
    return nil if name == ''

    @artists = Artist.where("lower(name) like ?", "%#{name.downcase}%")

    if @artists.empty?
      return nil
    else
      artist_ids = @artists.map { |artist| artist.id }
      return artist_ids
    end
  end
end
