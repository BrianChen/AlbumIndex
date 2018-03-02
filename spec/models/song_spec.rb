require 'rails_helper'

RSpec.describe Song, type: :model do
  before(:all) do
    @song = Song.new(title: "NewSong", artist_id: 1, album_id: 2)
    @DBSong = Song.create(title: "DBSong")
  end

  describe "Validations" do
    it "should contain a title, artist_id and album_id" do
      expect(@song.title).to eq("NewSong")
      expect(@song.artist_id).to eq(1)
      expect(@song.album_id).to eq(2)
    end

    it "should require a title" do
      @song.title = nil
      expect(@song).to_not be_valid
    end
    it "should require an artist_id" do
      @song.artist_id = nil
      expect(@song).to_not be_valid
    end
    it "should require an album_id" do
      @song.album_id = nil
      expect(@song).to_not be_valid
    end
  end
end
