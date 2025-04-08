/** First Wollok example 
object wollok {
	method puedeViajar__(unViajero, unDestino) {
		return true
	}
}*/

object brooklyn {

	method puedeViajar(unViajero){
		return unViajero.peso() <= 1000
	}
}

object matrix {
	method puedeViajar(unViajero){
		return unViajero.puedeLlamar()
	}
}

////CHUCK
object chuck {
	const peso = 900
	
	method puedeLlamar(){
		return true
	}
	method peso(){
		return peso
	}
}

////NEO
object neo{
	const peso = 0
	var credito = true
	/*
	method tieneCredito(_bool){
		credito = _bool
	}
	*/
	method peso(){
		return peso
	}
	method credito(){
		return credito
	}
	method credito(_bool){
		credito = _bool
	}

	method puedeLlamar(){
		return self.credito()
	}
}


////HACK
object hawk{
	var pesoPropio = 0
	var vehiculo = bicicleta
	//const puedeLlamar = false

	method pesoPropio(){
		return pesoPropio
	}

	method pesoPropio(_unPeso){
		pesoPropio = _unPeso
	}

	method vehiculo(_unVehiculo){
		vehiculo = _unVehiculo
	}

	method peso(){
		return vehiculo.peso () + self.pesoPropio()
	}

	method puedeLlamar(){
		return false
	}

}

object bicicleta{
	var property peso = 10
}

object camion{
	var property pesoCamion = 500
	var property cantAcoplado = 2

	method peso(){
		return pesoCamion + pesoCamion * cantAcoplado
	}
}