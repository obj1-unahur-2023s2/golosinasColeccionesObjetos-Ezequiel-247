import golosinas.*

object mariano {
	var bolsa = []
	
	method bolsa() = bolsa
	
	method comprar(unaGolosina) = bolsa.add(unaGolosina)
	
	method desechar(unaGolosina) = bolsa.remove(unaGolosina)
	
	method cantidadDeGolosinas() = bolsa.size()
	
	method tieneLaGolosina(unaGolosina) = bolsa.contains(unaGolosina)
	
	method probarGolosinas() = bolsa.map({g => g.mordida()})
	
	method hayGolosinaSinTACC() = bolsa.any({g => g.tieneGluten()})
	
	method preciosCuidados()= bolsa.all({g=>g.precio()<=10})
	
	method golosinaDeSabor(unSabor) = bolsa.find({e=>e.gusto() == unSabor})
	
	method golosinasDeSabor(unSabor) = bolsa.filter({e=>e.gusto() == unSabor})
	
	method sabores() = bolsa.map({g=>g.gusto()}).asSet()
	
	method golosinaMasCara() = bolsa.max({e=>e.precio()})
	
	method pesoGolosinas() = bolsa.sum({g => g.peso()})
	
	method gustosFaltantes(todosLosSabores)= todosLosSabores.asSet().difference(self.sabores())
	
	}
