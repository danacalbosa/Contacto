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

	it "valida letra respuesta" do
		juego = Game.new
		juego.asignar_palabra "Frutilla"
		juego.validar_respuesta("Fruza", 2).should == true
	end

	it "valida letra respuesta falso" do
		juego = Game.new
		juego.asignar_palabra "Frutilla"
		juego.validar_respuesta("Fwuza", 2).should == false
	end
end
