class Hogar {

	var property nivelMugre ## integer
	var property confort ## integer 

	// Se considera que un hogar _es bueno_ 
	// si su nivel de mugre es la mitad del confort que ofrece, o menos. 
	method esBueno() = nivelMugre <= confort / 2 ## devuelve booleano

	method fueAtacado(plaga) {
		nivelMugre += plaga.nivelDanio() ## no devuelve nada, aumenta el valor de la variable nivelMugre
	}

}

class Mascota {

	var property nivelSalud

	method fueAtacado(plaga) {
		if (plaga.transmiteEnfermedad()) {
			nivelSalud -= plaga.nivelDanio() ## no devuelve nada, reduce el valor de la variable nivelMugre
		} 
	} 

	method esBueno() = nivelSalud > 250 ## devuelve booleano

}

class Huerta {

	var property capacidadProduccion ## integer

	method esBueno() {
		return capacidadProduccion > INTA.produccionMinima() ## devuelve booleano
	}

	method fueAtacado(plaga) {
		capacidadProduccion -= plaga.nivelDanio() * 0.1
		if (plaga.transmiteEnfermedad()) {
			capacidadProduccion -= 10 ## no devuelve nada, reduce el valor de la variable capacidadProduccion
		}
	}

}

object INTA {

	var property produccionMinima

}

