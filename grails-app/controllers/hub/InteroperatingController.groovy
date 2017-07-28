package hub

class InteroperatingController {

    static responseFormats = ['json', 'xml']

    def springSecurityService

    static allowedMethods = [agregarOModificarRecurso:'POST']

    def agregarOModificarRecurso() {
        def datos = request.JSON
        def elRecurso = Recurso.findOrCreateByRecursoId(datos.recurso)
        elRecurso.conjunto = ConjuntoDeDatos.findBySingiID(datos.dato)
        elRecurso.nombre = datos.nombre
        elRecurso.descripcion = datos.descripcion
        elRecurso.url = datos.urlDescargaArchivo
        elRecurso.path = datos.pathNavegador
        elRecurso.taxonomia = datos.taxId;
        elRecurso.usuarioAlta = datos.usuario;
        elRecurso.web = datos.webRecurso;
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
