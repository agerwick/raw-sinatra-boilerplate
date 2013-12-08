require 'sinatra/base'
require 'haml'

class App < Sinatra::Base
  set :sessions, true
  set :logging, true if settings.environment != :test
  set :views, "app/views"
end

# Load all application files.
Dir["app/**/*.rb"].each do |file|
  require_relative file
end
