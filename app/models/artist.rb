class Artist < ApplicationRecord
  validates :name, presence: true

  def self.find_by_name(name)
    @artists = Artist.where("lower(name) like ?", "%#{name.downcase}%")

    if @artists
      return @artists
    else
      return nil
    end
  end
end
