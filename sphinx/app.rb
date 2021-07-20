require('sinatra')
require('sinatra/reloader')
require('./lib/sphinx')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  erb(:sphinx)
end

get('/success') do