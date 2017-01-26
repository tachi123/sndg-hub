package hub

class Herramienta {

	String singiID

	String nombre
	
	String tipo

	String descripcion

	String responsable

	String colaboradores

	static belongsTo = [ unidad : Unidad ]
	
    static constraints = {
		nombre()
		tipo()
		singiID nullable: true
		descripcion nullable: true
		responsable nullable: true
		colaboradores nullable: true
	}
}
