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
		@palabra = pal
	end

	def mostrar_palabra_slave
		@palabra[@letras_a_mostrar-1]
	end

end
