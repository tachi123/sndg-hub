package hub

class Centro {

	String singiID
	
	String nombre

	String siglas
	
	String contactoLegal
	
	String contactoTecnico
	
	Date fecha
	
	Boolean adherido
	
	String paginaWeb
	
	static hasMany = [ dependeDe : Institucion ]
	
    static constraints = {
		fecha nullable: true
		siglas nullable: true
		paginaWeb nullable: true
    }

    static mapping = {
        sort "nombre"
    }
	
	String toString() {
		"$nombre ($singiID)" 
	}
}
