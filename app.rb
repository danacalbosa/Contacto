require 'sinatra'
require_relative "./lib/game.rb"

@@juego = Game.new


get '/' do
	erb	:pagina_king
    
end

get '/slave' do
	@letras = @@juego.mostrar_palabra_slave
	erb	:pagina_slave
end

post '/enviarPalabra' do
	@@juego.asignar_palabra params["palabra"]
end


