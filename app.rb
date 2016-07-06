require('sinatra')
require('sinatra/reloader')
require('./lib/places')
also_reload('lib/**/*.rb')

get('/') do
  @places = Place.all()
  erb(:index)
end

post('/location') do
  location = params.fetch('place')
  place = Place.new(location)
  place.save()
  erb(:success)
end
