require_relative '../lib/game.rb'

describe "acciones del slave" do
	it "ingresar una pregunta, lista tiene una pregunta" do
		juego = Game.new
		juego.agregar_pregunta_slave "Preg 1"
		juego.obtener_preguntas_slave.length.should == 1
	end

	it "ingresar dos pregunta, lista tiene dos pregunta" do
		juego = Game.new
		juego.agregar_pregunta_slave "Preg 1"
		juego.agregar_pregunta_slave "Preg 2"
		juego.obtener_preguntas_slave.length.should == 2
	end


	it "hago contacto valido" do
		juego = Game.new
		juego.agregar_pregunta_slave "Animal"
		juego.agregar_respuesta_slave "Foca"
		juego.agregar_respuesta_contacto "Foca"
		juego.existe_contacto.should == true
	end

	it "hago contacto invalido" do
		juego = Game.new
		juego.agregar_pregunta_slave "Animal"
		juego.agregar_respuesta_slave "Foca"
		juego.agregar_respuesta_contacto "Asd"
		juego.existe_contacto.should == false
	end

	it "ingresar palabra Hola, hacer contacto devuelve Ho" do
		juego = Game.new
		juego.asignar_palabra "Hola"
		juego.mostrar_palabra_slave.should == "H"
		juego.hacer_contacto
		juego.mostrar_palabra_slave.should == "Ho"
	end

end
