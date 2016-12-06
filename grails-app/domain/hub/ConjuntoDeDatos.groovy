package hub

class ConjuntoDeDatos {

	String singiID
	
	String nombre
	
	Integer porcentajeSecuenciado
	
	Boolean enBuscador
	
	static belongsTo = [ unidad : Unidad ]
	
    static constraints = {
    }
}
