require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/places")

get("/") do
  @places = Places.all()
  erb(:index)
end

post("/places") do
  description = params.fetch("locations")
  palces = Places.new(locations)
  places.save()
  erb(:success)
end
