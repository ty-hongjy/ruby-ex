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
	name=params[:name]||"Nobody"
	erb :index,:locals=>{'greeting'=>greeting,'name'=>name}
end


