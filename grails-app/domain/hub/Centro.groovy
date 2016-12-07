package hub

class Centro {

	String singiID
	
	String nombre

	String siglas
	
	String contactoLegal
	
	String contactoTecnico
	
	Date fecha
	
	Boolean adherido
	
	static hasMany = [ dependeDe : Institucion ]
	
    static constraints = {
    }
}
