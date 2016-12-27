package hub

class Unidad {

	String nombre
		
	static belongsTo = [ centro : Centro ]

    static constraints = {
    }
	
	static mapping  = {
        sort "nombre"
	}
	
	String toString () {
		nombre
	}
}
