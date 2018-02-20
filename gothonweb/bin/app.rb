require 'sinatra'

set :port,8080
set :static,true
set :public_folder,"static"
set :views,"views"

get '/' do
	return 'hello world'
end

get '/hello/' do
	greeting=params[:greeting]||"hi There"
	erb :index,:locals=>{'greeting'=>greeting}
end


