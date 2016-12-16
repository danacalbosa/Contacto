require 'sinatra'
require_relative "./lib/game.rb"

@@juego = Game.new
@@juego.asignar_palabra "FRUTILLA"

get '/' do
	erb :pagina_king
    
end

get '/slave' do
	@letras = @@juego.mostrar_palabra_slave
	erb	:pagina_slave
end

post '/enviarPalabra' do
	begin
		@@juego.asignar_palabra params["palabra"]
	rescue
		@mensaje = "Palabra invalida"
	end	
	erb :pagina_king
end

get '/verpreguntasslave' do
	@preguntas = @@juego.obtener_preguntas_slave
	erb :pagina_king
end

get '/verpreguntasslave' do
	@contacto = @@juego.respuesta_contacto
	
end

post '/enviarPregunta' do
	@@juego.agregar_pregunta_slave params["pregunta"]
	@@juego.agregar_respuesta_slave params["respuesta"]
	erb :pagina_slave
end

post '/enviarRespuestaKing' do
	begin
		@@juego.responder_rey params["respuestaking"]
		@@juego.validar_respuesta_rey
	rescue
		@mensaje = "Palabra invalida"
	end

	erb :pagina_king
end

	
