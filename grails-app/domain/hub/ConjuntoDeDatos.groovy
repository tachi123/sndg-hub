package hub

class ConjuntoDeDatos {

	String singiID
	
	String nombre

	String descripcion

	String responsable

	String colaboradores

	Integer porcentajeSecuenciado
	
	Boolean enBuscador
	
	String tipoDeOrganismo
	
	String tipoDeComunidad
	
	static belongsTo = [ unidad : Unidad ]
	
	static hasMany = [ enlaces : Enlace ]

	static mapping = {
		descripcion type: 'text'
	}

    static constraints = {
		nombre()
		singiID()
		descripcion nullable: true
		responsable nullable: true
		colaboradores nullable: true
		porcentajeSecuenciado nullable: true
		tipoDeOrganismo nullable: true
		tipoDeComunidad nullable: true

    }
}
