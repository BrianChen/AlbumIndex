require 'rails_helper'

RSpec.describe Artist, type: :model do
  before(:all) do
    @artist = Artist.new(name: "Brian Chen")
  end

  it "should have a name" do
    expect(@artist.name).to eq("Brian Chen")
  end
end
