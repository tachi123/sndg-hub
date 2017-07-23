package hub

class ConjuntoDeDatos {

	String singiID
	
	String nombre

	String descripcion

	String proyectoDescripcion

	String proyecto

	String responsable

	String colaboradores

	Integer porcentajeSecuenciado
	
	Boolean enBuscador
	
	String tipoDeOrganismo
	
	String tipoDeComunidad

	Integer orden = 0
	
	static belongsTo = [ unidad : Unidad ]
	
	static hasMany = [ enlaces : Enlace, recursos: Recurso ]

	static mapping = {
		descripcion type: 'text'
		proyectoDescripcion type: 'text'
		colaboradores type: 'text'
	}

    static constraints = {
		nombre()
		singiID()
		descripcion nullable: true
		proyecto nullable: true
		proyectoDescripcion nullable: true
		responsable nullable: true
		colaboradores nullable: true
		porcentajeSecuenciado nullable: true
		tipoDeOrganismo nullable: true
		tipoDeComunidad nullable: true
		orden nullable: true
    }
}
