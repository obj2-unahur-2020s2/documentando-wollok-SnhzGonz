class Plaga {
	var property poblacion
	
	method transmiteEnfermedad() = poblacion >= 10 ## devuelve boolean 
	
	method atacar(elemento){
		poblacion *= 1.1
		elemento.fueAtacado(self) # no devuelve nada, ejecuta un metodo de otra clase
	}
}

class PlagaCucaracha inherits Plaga {

	var property pesoPromedio

	method nivelDanio() {
		return poblacion / 2 ## devuelve integer
	}

	override method transmiteEnfermedad() {
		return super() and pesoPromedio >= 10 ## devuelve boolean 
	}

	override method atacar(elemento) {
		super(elemento)
		pesoPromedio += 2 # no devuelve nada, aumenta el valor de la variable pesoPromedio y ejecuta herencia
	}

}

class PlagaMosquito inherits Plaga {

	method nivelDanio() {
		return poblacion ## devuelve integer
	}

	override method transmiteEnfermedad() {
		return super() and poblacion % 3 == 0 ## devuelve boolean 
	}

}

class PlagaPulgas inherits Plaga {

	method nivelDanio() = poblacion * 2 ## devuelve integer

}

class PlagaGarrapatas inherits PlagaPulgas {

	override method atacar(elemento) {
		poblacion *= 1.2
		elemento.fueAtado(self) # no devuelve nada, aumenta el valor de la variable poblacion y ejecuta un metodo de otra clase
	}

}

