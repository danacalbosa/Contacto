Feature: Contacto_game

Scenario: Muestra el titulo Pagina Kind
	Given voy a pagina inicial
	Then veo titulo "Pagina King"

Scenario: Muestra el titulo Pagina Slave
	Given voy a pagina inicial_slave
	Then veo titulo "Pagina Slave"
