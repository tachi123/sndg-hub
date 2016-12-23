package hub

class Enlace {

	String nombre
	
	String abreviatura
	
	String uri
	
    static constraints = {
		abreviatura nullable: true
    }
}
