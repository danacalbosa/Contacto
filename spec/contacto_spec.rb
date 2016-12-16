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

end
