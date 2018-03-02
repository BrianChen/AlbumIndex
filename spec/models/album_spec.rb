require 'rails_helper'

RSpec.describe Album, type: :model do
  before(:all) do
    @album = Album.new(title: "NewAlbum")
    @DBAlbum = Album.create(title: "DBAlbum")
  end

  describe "Validations" do
    it "should contain a title" do
      expect(@album.title).to eq("NewAlbum")
    end

    it "should require a title" do
      @album.title = nil
      expect(@album).to_not be_valid
    end
  end

  describe "Self.find_by_name" do
    it "should return nil if none of the artists title contains substring" do
      expect(Album.find_by_title("notAnAlbum")).to be_nil
    end

    it "should be case-insentive to search" do
      expect(Album.find_by_title("dbalbum")).not_to be_nil
    end
  end
end
