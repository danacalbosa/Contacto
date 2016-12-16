class Game

	def initialize
		@palabra = ""
		@letras_a_mostrar = 1
		@preguntas_slave = []
		@respuestas_slave = []
		@finalizado = false
	end

	def ver_palabra
		@palabra
	end

	def asignar_palabra pal
		#if !pal =~ /\s/
		if !pal.is_a? String
			fail "Es un numero y no se puede" 
		end
		if pal =~ /\d/
			fail "Es un alpha y no se puede" 
		end
		if pal.match(" ")
			fail "Contiene espacio y no se puede" 
		end

		@palabra = pal
	end

	def mostrar_palabra_slave
		@palabra[@letras_a_mostrar-1]
	end

	def incrementar_letras
		@letras_a_mostrar +=1
	end

	def agregar_pregunta_slave pregunta
		@preguntas_slave << pregunta
	end

	def obtener_preguntas_slave
		@preguntas_slave
	end

	def agregar_respuesta_slave respuesta
		@respuestas_slave << respuesta
	end

	def obtener_respuestas_slave
		@respuestas_slave
	end

	def finalizado valor
		@finalizado = valor
	end
end

