class Game

	def initialize
		@palabra = ""
		@letras_a_mostrar = 1
	end

	def ver_palabra
		@palabra
	end

	def asignar_palabra pal
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



end

