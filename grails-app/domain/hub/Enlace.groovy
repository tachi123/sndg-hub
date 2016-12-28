package hub

class Enlace {

	String nombre
	
	String abreviatura
	
	String uri

	String toString() {
		nombre? (nombre + abreviatura? " ($abreviatura)" : "") : '<Nuevo enlace>'
	}


	static constraints = {
		abreviatura nullable: true
    }
}
