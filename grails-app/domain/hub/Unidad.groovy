package hub

class Unidad {

	String nombre
		
	static belongsTo = [ centro : Centro ]

    static constraints = {
    }
	
	String toString () {
		nombre
	}
}
