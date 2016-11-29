require('rspec')
require('place')

describe(Place) do
  describe("#location") do
    it("lets you add a place") do
      test_place = Place.new("Portland, OR")
      expect(test_place.location).to eq("Portland, OR")
    end
  end
  describe(".view_passport") do
    it("returns the list of places") do
      expect(Place.view_passport).to eq([])
    end
  end
  describe("#stamp_passport") do
    it("saves a place to your passport") do
      portland = Place.new("Portland, OR")
      portland.stamp_passport
      expect(Place.view_passport).to eq([portland])
    end
  end
end
