require 'sinatra'

set :public_folder, File.dirname(__FILE__) + '/public'

get '/' do
  @title          = 'We are coming soon!'
  @email_address  = 'info@example.com'

  erb :signup
end

get '/thankyou' do
  erb :thankyou
end

get '/confirmed' do
  erb :confirmed
end
