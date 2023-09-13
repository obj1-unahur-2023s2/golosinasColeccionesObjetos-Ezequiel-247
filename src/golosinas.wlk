

object bombon {

	const peso = 15
	
	method precio() = 5
	method peso() = peso
	method mordida() = (peso * 0.8) - 1
	method tieneGluten() = false
	method gusto() = "frutilla"
	
}

object alfajor {
	
	const peso = 300
	
	method peso() = peso
	method precio() = 12
	method gusto() = "chocolate"
	method tieneGluten() = true
	method mordida() = peso * 0.8
}

object caramelo{
	
	const peso = 5
	
	method peso() = peso
	method precio() = 1
	method gusto() = "frutilla"
	method mordida() = peso -1
	method tieneGluten() = false
}

object chupetin{
	const peso = 7
	
	method peso() = peso
	method precio() = 2
	method gusto() = "naranja"
	method tieneGluten() = false
	method mordida() = 2.max(peso * 0.10)
}

object oblea{
	
	const peso = 250
	
	method precio() = 5
	method peso() = peso
	method gusto() = "vainilla"
	method tieneGluten() = true
	method mordida() =  	if (peso > 70){ 
								 peso *0.5
							 	}
							else{
								peso * 0.25
							}
						
}



object chocolatin {
	var property peso
	
	method precio() = 0.50 * peso
	method gusto() = "chocolate"
	method tieneGluten() = true
	method mordida() = 0.max(peso - 2)
	
}

object golosinaBaniada{
	
	method golosina(unaGolosina) = unaGolosina
	method peso(unaGolosina) = unaGolosina.peso() + 4
	method precio(unaGolosina) = unaGolosina.precio() + 2
	method gusto(unaGolosina) = unaGolosina.gusto()
	method esLibreDeGluten(unaGolosina) = unaGolosina.esLibreDeGluten()
	method mordida(unaGolosina) = unaGolosina.mordisco() - 2 
	
}



object pastillaTutiFruti{
	const peso = 5
	var gluten 
	var gusto = "frutilla"
	
	method peso() = peso
	method tieneGluten() = gluten
	method esLibreDeGluten(valor){ gluten = valor}
	method precio() = 	if (self.tieneGluten() == not false) { 
							return 7
							} 
						else 
							{ return 10}
	method mordida(unGusto) {gusto = unGusto}
	method mordida() = gusto
	method gusto() = gusto
}








