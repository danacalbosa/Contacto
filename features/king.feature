Feature: King_feature

Scenario: Muestra el titulo Pagina King
	Given voy a pagina inicial
	Then veo titulo "Pagina King"

Scenario: Muestra "Palabra Secreta"
	Given voy a pagina inicial
	Then veo texto "Palabra Secreta"

Scenario: Se ingresa "Palabra secreta"
	Given voy a pagina inicial
	Then ingreso "PalabraSecreta"

Scenario: Muestra texto "Ver preguntas"
	Given voy a pagina inicial
	Then veo textoPreguntas "Ver Preguntas"
	And ingreso "Frutilla"

Scenario: Se ingresa "Palabra secreta"
	Given voy a pagina inicial
	When ingreso "9"
	Then veo texto "Palabra invalida"

Scenario: Muestra el link jugador slave
	Given voy a pagina inicial
	Then veo texto "Jugador Slave"


Scenario: Ingresa respuesta "respuesta_king"
	Given voy a pagina inicial
	Then ingreso respuesta_king "respuesta_king"

Scenario: Pierde el juego
	Given voy a pagina inicial
	When hago click "Si!"
	Then veo texto "Perdiste!"


