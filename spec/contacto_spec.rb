require_relative '../lib/game.rb'

describe "juego contacto" do

	it "comienza sin palabra" do
		juego = Game.new
		juego.ver_palabra.should == ""
	end

	it "comienza sin preguntas" do
		juego = Game.new
		juego.obtener_preguntas_slave.length.should == 0
	end

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

	it "ingresar palabra Hola, guarda Hola" do
		juego = Game.new
		juego.asignar_palabra "Hola"
		juego.ver_palabra.should == "Hola"
	end

	it "ingresar palabra Hola, devuelve H" do
		juego = Game.new
		juego.asignar_palabra "Hola"
		juego.mostrar_palabra_slave.should == "H"
	end

	it "ingresar palabra 12, devuelve error" do
		juego = Game.new
		expect {juego.asignar_palabra 12 }.to raise_error
	end

	it "ingresar palabra con espacios, devuelve error" do
		juego = Game.new
		expect {juego.asignar_palabra "hola mundo" }.to raise_error
	end

end
