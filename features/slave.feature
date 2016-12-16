Feature: Slave_feature

Scenario: Muestra el titulo Pagina Slave
	Given voy a pagina inicial_slave
	Then veo titulo_slave "Pagina Slave"
	And veo texto "Empieza con"
	And veo texto "F"


Scenario: Muestra el texto "Es un/a" e ingreso "pregunta"
	Given voy a pagina inicial_slave
	Then veo texto_pregunta "Es un/a"
	And ingreso pregunta "Pregunta"

Scenario: Muestra el texto Respuesta:
	Given voy a pagina inicial_slave
	And veo texto_respuesta "Respuesta:"

Scenario: Muestra el titulo Pagina Slave
	Given voy a pagina inicial_slave
	Then veo titulo "Pagina Slave"




	
