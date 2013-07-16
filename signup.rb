require 'sinatra'
require 'sass'

set :public_folder, File.dirname(__FILE__) + '/public'
set :views, :default => 'views', :scss => (File.dirname(__FILE__) + '/assets/stylesheets')

helpers do
  def find_template(views, name, engine, &block)
    _, folder = views.detect { |k,v| engine == Tilt[k] }
    folder ||= views[:default]
    super(folder, name, engine, &block)
  end
end

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

get '/css/*.css' do
  filename = params[:splat].first
  scss filename.to_sym, :style => :expanded
end
