require "sinatra"
require "sinatra/reloader"
require "./lib/spaceage"
also_reload "lib/**/*.rb"

get "/" do
  erb(:index)
end

get "/age" do
  # more stuff here
  erb(:age)
end
