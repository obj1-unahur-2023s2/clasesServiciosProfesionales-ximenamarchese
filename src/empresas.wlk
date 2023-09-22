import solicitantes.*
import profesionales.*
import universidad.*

class Empresa{
	const profesionales = #{}
	var property honorariosDeReferencia = 0	
	
	method cuantosEstudiaronEn(unaUniversidad) = profesionales.count({p => p.universidad() == unaUniversidad})
	method profesionalesCaros() {
		return profesionales.filter({p => p.honorariosPorHora() > honorariosDeReferencia})
	}
	method universidadesFormadoras(){
		return profesionales.map({p => p.universidad()}).asSet()
	}
	method profesionalMasBarato() = profesionales.min({p => p.honorariosPorHora()})
	method esDeGenteAcotada() {
		return profesionales.any({p => p.provinciasDondePuedeTrabajar().size()})
	}
	method esDeGenteAcotadaAll() {
		return profesionales.all({p => p.provinciasDondePuedeTrabajar().size() <= 3})
	}
	method puedeSatisfacer(unSolicitante) {
		return profesionales.any({p => unSolicitante.puedeSerAtendidoPor(p)})
	}
	method darUnServicio(unSolicitante){
		if (self.puedeSatisfacer(unSolicitante)){
			
		}
		}
}
