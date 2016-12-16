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

end
