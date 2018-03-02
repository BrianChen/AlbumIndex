require 'rails_helper'

RSpec.describe Artist, type: :model do
  before(:all) do
    @artist = Artist.new(name: "Johnny A")
    @artist2 = Artist.create(name: "Jenny B")
  end

  describe "Validations" do
    it "should contain a name" do
      expect(@artist.name).to eq("Johnny A")
    end

    it "should require a name" do
      @artist.name = nil
      expect(@artist).to_not be_valid
    end
  end

  describe "Self.find_by_name" do
    it "should return nil if none of the artists name contains substring" do
      expect(Artist.find_by_name("notAnArtist")).to be_nil
    end

    it "should be case-insentive to search" do
      expect(Artist.find_by_name("jenny b")).not_to be_nil
    end
  end
end
