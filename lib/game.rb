class Game

	def initialize
		@palabra = ""
		@letras_a_mostrar = 1
		@preguntas_slave = []
		@respuestas_slave = []
		@respuesta_king = ""
		@finalizado = false
		@respuesta_contacto = ""
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
		@palabra[0..@letras_a_mostrar-1]
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

	def responder_king respuesta
		@respuesta_king << respuesta
	end

	def obtener_preguntas_slave_texto
		return "Es un " + @preguntas_slave[@preguntas_slave.count-1] + "?"
	end

	def validar_respuesta (respuesta, cant_caract)
		$i = 0

		while $i < cant_caract.to_i do
			if respuesta[$i] != @palabra[$i]
				return false
			end			
			$i +=1
		end
		return true
	end

	def finalizado valor
		@finalizado = valor
	end


	def agregar_respuesta_contacto respuesta_contacto
		@respuesta_contacto = respuesta_contacto
	end

	def existe_contacto
		if @respuesta_contacto == @respuestas_slave[@respuestas_slave.count-1]
			return true
		end
		return false
	end


	
	def is_finalizado
		@finalizado
	end

	def hacer_contacto
		@letras_a_mostrar += 1
	end

end

