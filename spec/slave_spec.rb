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
end
