import universidad.*

// esta clase está completa, no necesita nada más
class ProfesionalAsociado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	
	method honorariosPorHora() { return 3000 }
	
	method cobrar(unImporte){
		asociacionProfesionalesDelLitoral.recibirDonacion(unImporte)
	}
}


// a esta clase le faltan métodos
class ProfesionalVinculado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() = universidad.provincia()
	method honorariosPorHora()
	method cobrar(unImporte) {
		universidad.recibirDonacion(unImporte/2)
	}
}


// a esta clase le faltan atributos y métodos
class ProfesionalLibre {
	var property universidad
	const provincias = #{}
	var property honorariosPorHora
	var totalRecaudado = 0
	
	method agregarProvincia(unaProvincia) {provincias.add(unaProvincia)}
	method quitarleProvincia(unaProvincia) {provincias.remove(unaProvincia)}
	
	method provinciasDondePuedeTrabajar() = provincias
	
	method cobrar(unImporte){totalRecaudado += unImporte}
	method pasarDinero(unProfesional, unImporte){
		totalRecaudado -= unImporte
		unProfesional.cobrar(unImporte)
	}
}
