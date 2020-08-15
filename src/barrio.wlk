class Barrio {

	const property elementos = [] ## tipo de lista

	method agregarElemento(elemento) {
		elementos.add(elemento) ## no devuelve nada, agrega elementos a la lista
	}

	method sacarElemento(elemento) {
		elementos.remove(elemento) ## no devuelve nada, quita elementos de la lista
	}

	method elementosBuenos() {
		return elementos.count{ e => e.esBueno() } ## devuelve integer
	}

	method elementosMalos() = elementos.count{ e => not e.esBueno() } ## devuelve integer

	method esCopado() {
		return self.elementosBuenos() > self.elementosMalos() ## devuelve un booleano
	}

}

