package hub

class Herramienta {

	String nombre
	
	String tipo

	static belongsTo = [ unidad : Unidad ]
	
    static constraints = {
    }
}
