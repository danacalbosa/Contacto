require 'sinatra'
require_relative "./lib/game.rb"

get '/' do
@@juego = Game.new
	erb :pagina_king
end

get '/slave' do
	@letras = @@juego.mostrar_palabra_slave
	if @@juego.is_finalizado
		@mensaje = "Ganaste!"
	end

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
	@preguntas = @@juego.obtener_preguntas_slave_texto
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


post '/enviar_respuesta_king' do
	begin
		@@juego.responder_king params["respuestaking"]
		@@juego.validar_respuesta
	rescue
		@mensaje = "Palabra invalida"
	end

	erb :pagina_king
end

	
get '/si' do
	@@juego.finalizado true
	@mensaje = "Perdiste!"
	erb :pagina_king
end

post '/enviarContacto' do
	@@juego.agregar_respuesta_contacto params["respuesta_contacto"]
	if @@juego.existe_contacto
		@haycontacto = "Hay contacto"
	else
		@haycontacto = "No hay contacto"
	end
	
	erb :pagina_slave
end

