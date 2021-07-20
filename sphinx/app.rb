require('sinatra')
require('sinatra/reloader')
require('./lib/sphinx')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  erb(:sphinx)
end

get('/question1') do
  erb(:question1)
end

post('/question2') do
  if params[:answer].downcase == "memory"
    erb(:question2)
  else
    erb(:failure)
  end
end

post('/question3') do
  if params[:answer].downcase == "time"
    erb(:question3)
  else
    erb(:failure)
  end
end

post('/question4') do
  if params[:answer].downcase == "death"
    erb(:question4)
  else
    erb(:failure)
  end
end

post('/question5') do
  if params[:answer].downcase == "hummingbird"
    erb(:question5)
  else
    erb(:failure)
  end
end

post('/result') do
  if params[:answer].downcase == "fish"
    erb(:success)
  else
    erb(:failure)
  end
end