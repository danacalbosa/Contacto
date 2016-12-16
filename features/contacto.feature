Feature: Contacto_game

Scenario: Muestra el titulo Pagina Kind
	Given voy a pagina inicial
	Then veo titulo "Pagina King"

Scenario: Muestra el titulo Pagina Slave
	Given voy a pagina inicial_slave
	Then veo titulo_slave "Pagina Slave"
	And veo texto "Empieza con"
	And veo texto "F"


Scenario: Muestra el texto Es un/a ?
	Given voy a pagina inicial_slave
	Then veo texto_pregunta "Es un/a ?"

Scenario: Muestra el titulo Pagina Slave
	Given voy a pagina inicial_slave
	Then veo titulo "Pagina Slave"

Scenario: Muestra "Palabra Secreta"
	Given voy a pagina inicial
	Then veo texto "Palabra Secreta"

Scenario: Se ingresa "Palabra secreta"
	Given voy a pagina inicial
	Then ingreso "Palabra Secreta"


	
