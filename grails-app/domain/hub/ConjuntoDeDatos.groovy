package hub

class ConjuntoDeDatos {

	String singiID
	
	String nombre
	
	Integer porcentajeSecuenciado
	
	Boolean enBuscador
	
	String tipoDeOrganismo
	
	String tipoDeComunidad
	
	static belongsTo = [ unidad : Unidad ]
	
	static hasMany = [ enlaces : Enlace ]
	
    static constraints = {
		nombre()
		singiID()
		porcentajeSecuenciado nullable: true
		tipoDeOrganismo nullable: true
		tipoDeComunidad nullable: true

    }
}
