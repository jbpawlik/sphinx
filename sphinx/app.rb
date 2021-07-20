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

post('/result1') do
  if params[:answer].downcase == "memory"
    erb(:question2)
  else
    erb(:failure)
  end
end

post('/result2') do
  if params[:answer].downcase == "time"
    erb(:question3)
  else
    erb(:failure)
  end
end

post('/result3') do
  if params[:answer].downcase == "death"
    erb(:question4)
  else
    erb(:failure)
  end
end

post('/result4') do
  if params[:answer].downcase == "hummingbird"
    erb(:question5)
  else
    erb(:failure)
  end
end

post('/result5') do
  if params[:answer].downcase == "fish"
    erb(:success)
  else
    erb(:failure)
  end
end