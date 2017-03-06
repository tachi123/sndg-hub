package hub

class Herramienta {

	String singiID

	String nombre
	
	String tipo

	String descripcion

	String proyecto

	String proyectoDescripcion

	String responsable

	String colaboradores

	String url

	static belongsTo = [ unidad : Unidad ]
	
    static constraints = {
		nombre()
		tipo()
		singiID nullable: true
		descripcion nullable: true
		proyecto nullable: true
		proyectoDescripcion nullable: true
		responsable nullable: true
		colaboradores nullable: true
		url nullable: true
	}

	static mapping = {
		descripcion type: 'text'
	}
}
