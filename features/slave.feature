Feature: Slave_feature

Scenario: Muestra el titulo Pagina Slave
	Given voy a pagina inicial
	And ingreso "Pascual"
	Then voy a pagina inicial_slave
	And veo titulo_slave "Pagina Slave"
	And veo texto "Empieza con"
	And veo texto "P"

Scenario: Muestra el texto "Es un/a" e ingreso "pregunta"
	Given voy a pagina inicial_slave
	Then veo texto_pregunta "Es un/a"
	And ingreso pregunta "Pregunta"

Scenario: Muestra el texto_Respuesta e ingresa respuesta
	Given voy a pagina inicial_slave
	Then veo texto_respuesta "Respuesta:"
	And ingreso respuesta "Campo_Respuesta"

Scenario: Muestra el titulo Pagina Slave
	Given voy a pagina inicial_slave
	Then veo titulo "Pagina Slave"

Scenario: Pierde el juego
	Given voy a pagina inicial
	And ingreso "Frutilla"

	When voy a pagina inicial_slave
	And ingreso pregunta "fruta?"
	And ingreso respuesta "Frutilla"

	Then voy a pagina inicial
	And hago click "Si!"
	And voy a pagina inicial_slave
	And veo texto "Empieza con"


