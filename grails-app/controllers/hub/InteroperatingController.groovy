package hub

class InteroperatingController {

    static responseFormats = ['json', 'xml']

    def springSecurityService

    static allowedMethods = [agregarOModificarRecurso:'POST']

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

    def agregarOModificarRecurso() {
        def datos = request.JSON

        print datos
    }
}
