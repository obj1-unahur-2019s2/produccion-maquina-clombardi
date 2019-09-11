object registroProduccion {
	var produccionPorDia = [53,18,49,62,33,39]	
	
	method cambiarProduccionPorDia(nuevaLista) {
		produccionPorDia = nuevaLista
	}

	/*
	la funcion recibe un elemento de la coleccion
	la coleccion va a llamar a esta funcion todas las veces que quiera
	
	// asi lo sabemos de intro
	function cumple(numero) {
	  return numero > 30
	}
	
	// notacion compacta que usa Wollok
	{ numero => numero > 30 }
	 */
	 
	 
	// esto no es lo mejor, pero sirve para practicar el any	
	method algunDiaSeProdujo(cantidad) {
		return produccionPorDia.any({ pd => pd == cantidad })
	}

	// esta es la posta	
	method algunDiaSeProdujo_ok(cantidad) {
		return produccionPorDia.contains(cantidad)
	}
	
	method maximoValorDeProduccion() {
		return produccionPorDia.max()
	}
	
	method valoresDeProduccionPares() {
		// quiero los que cumplen una condicion: filter
		return produccionPorDia.filter({ pd => pd.even() })
	}
	
	method valoresDeProduccionPares_largo() {
		return produccionPorDia.filter({ pd => pd % 2 == 0 })
	}
	
	method produccionEsAcotada(n1,n2) {
		// debe dar true si **todos** cumplen una condicion: all
		return produccionPorDia.all({ pd => pd.between(n1,n2) })
	}
	
	method produccionesSuperioresA(n) {
		// quiero los que cumplen una condicion: filter
		return produccionPorDia.filter({ pd => pd > n })
	}
	
	method produccionesSumando(n) {
		// quiero la lista que se obtiene 
		// aplicando una operacion sobre cada elemento: map
		return produccionPorDia.map({ pd => pd + n })
	}
	
	method totalProducido() {
		// la suma total: sum
		return produccionPorDia.sum()
	}
	
	method ultimoValorDeProduccion() {
		// el ultimo elemento: last.
		// no interviene ninguna función.
		return produccionPorDia.last()
	}
	
	method cantidadProduccionesMayorALaPrimera() {
		// cuántos elementos cumplen una condición: count
		return produccionPorDia.count({ pd => pd > produccionPorDia.first() })
	}
	
	method cantidadProduccionesMayorALaPrimera_con_variable() {
		// cuántos elementos cumplen una condición: count
		var laPrimera = produccionPorDia.first()
		return produccionPorDia.count({ pd => pd > laPrimera })
	}
}
