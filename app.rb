require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/places")

get("/") do
  @places = Places.all()
  erb(:index)
end

post("/places") do
  location = params.fetch("location")
  places = Places.new(location)
  places.save()
  erb(:success)
end
