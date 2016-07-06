require('rspec')
require('places')

describe(Place) do
  before() do
    Place.clear()
  end
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
  describe('#save') do
    it('saves locations to the list') do
      test_place = Place.new('Paris, France')
      test_place.save()
      expect(Place.all()).to (eq([test_place]))
    end
  end
  describe('.clear') do
    it('clears the place list') do
      test_place = Place.new('Vancouver, BC')
      test_place.save()
      Place.clear()
      expect(Place.all()).to (eq([]))
    end
  end
end
