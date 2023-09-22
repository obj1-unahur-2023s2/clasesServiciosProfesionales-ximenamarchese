class Persona {
	var property provinciaDondeVive
	
	method puedeSerAtendidoPor(unProfesional) {
		unProfesional.provinciasDondePueseTrabajar().contains(provinciaDondeVive)
	}
}

class Institucion {
	const universidadesQueReconoce = #{}
	method agregarUniversidad(unaUniversidad) {universidadesQueReconoce.add(unaUniversidad)}
	method quitarUniversidad(unaUniversidad) {universidadesQueReconoce.remove(unaUniversidad)}
	method puedeSerAtendidoPor(unProfesional) {
		return universidadesQueReconoce.contains(unProfesional.universidad())
	}
}

class Club{
	const provincias = #{}
	method agregarProvincia(unaProvincia) {provincias.add(unaProvincia)}
	method quitarProvincia(unaProvincia) {provincias.remove(unaProvincia)}
	method puedeSerAtendidoPor(unProfesional) {
		return not provincias.intersection(unProfesional.provinciasDondePueseTrabajar()).isEmpty()
	}
	
}
