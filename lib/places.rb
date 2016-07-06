class Place

  define_method(:initialize) do |location|
    @location = location
  end

  define_method(:location) do
    @location
  end

  define_singleton_method(:all) do
    []
  end

end
