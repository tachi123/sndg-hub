package hub

class InteroperatingController {

    static responseFormats = ['json', 'xml']

    def springSecurityService

    static allowedMethods = [agregarOModificarRecurso:'POST']
	
    def agregarOModificarRecurso() {
        def datos = request.JSON
        def elRecurso = Recurso.findOrCreateByRecursoId(datos.recursoId)
		//Conjunto SINGIID
        elRecurso.conjunto = ConjuntoDeDatos.findBySingiID(datos.singiID)
        elRecurso.nombre = datos.nombre;
		byte[] asdf = datos.descripcion.getBytes("UTF-8");
        elRecurso.descripcion =  new String(asdf, "UTF-8");
        elRecurso.url = datos.url;
        elRecurso.path = datos.path;
        elRecurso.taxonomia = datos.taxonomia;
        elRecurso.usuarioAlta = datos.usuarioAlta;
        elRecurso.web = datos.web;
        elRecurso.save()
        if (elRecurso.errors) {
            respond errors
        }
		respond elRecurso
    }

    def conjuntosDeDatosPorCentro() {
        def us = ConjuntoDeDatos.createCriteria().list(params) {
            unidad {
                centro {
                    eq('singiID', params.id)
                }
            }
            order ('nombre', 'asc')
        }
        respond us.collect{ mapearConjunto(it) }
    }

    def mapearConjunto(ConjuntoDeDatos x) {
        [
                id: x.id,
                nombre: x.nombre,
                idSingi: x.singiID
        ]

    }
}
