require 'sinatra'

get '/' do
	erb	:pagina_king
    
end

get '/slave' do
	erb	:pagina_slave
end
