Feature: King_feature

Scenario: Muestra el titulo Pagina Kind
	Given voy a pagina inicial
	Then veo titulo "Pagina King"

Scenario: Muestra "Palabra Secreta"
	Given voy a pagina inicial
	Then veo texto "Palabra Secreta"

Scenario: Se ingresa "Palabra secreta"
	Given voy a pagina inicial
	Then ingreso "Frutilla"
