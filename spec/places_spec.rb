require('rspec')
require('places')

describe(Place) do
  describe('#location') do
    it('lets you enter a specific location') do
      test_place = Place.new('Auckland, New Zealand')
      expect(test_place.location()).to (eq("Auckland, New Zealand"))
    end
  end
  describe('.all') do
    it('it creates empty all') do
      expect(Place.all()).to(eq([]))
    end
  end
end
