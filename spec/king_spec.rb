require_relative '../lib/game.rb'

describe "acciones del king" do

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

	it "ingresar respuesta king invalida" do
		juego = Game.new
		juego.asignar_palabra "Pato"
		juego.agregar_pregunta_slave "Animal"
		juego.agregar_respuesta_slave "Vaca"
		juego.validar_respuesta_king.should == true
	end

	it "ingresar respuesta king ok" do
		juego = Game.new
		juego.asignar_palabra "Pato"
		juego.agregar_pregunta_slave "Animal"
		juego.agregar_respuesta_slave "Pato"
		juego.validar_respuesta_king.should == false
	end


end
