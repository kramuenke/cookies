require 'sinatra'

get '/set' do
  response.set_cookie("Bob", :value => 'foo', :path => '/login', :secure => true, :httpOnly => true)
  "bla"
end

get '/login' do
  "yay received cookie" if request.cookies["Bob"]
end

get '/login/bar' do
  "whoa got a cookie" if request.cookies["Bob"]
end

get '/foo' do
  "d'oh received a cookie" if request.cookies["Bob"]
end
