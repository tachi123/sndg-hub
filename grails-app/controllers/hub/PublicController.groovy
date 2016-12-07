package hub

class PublicController {

    def centros(Integer max) {
		params.max = Math.min(max ?: 20, 100)
		respond Centro.list(params), model:[centroInstanceCount: Centro.count()]
	}
	
	def datos(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ConjuntoDeDatos.list(params), model:[conjuntoDeDatosInstanceCount: ConjuntoDeDatos.count()]
    }
	
	def herramientas(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Herramienta.list(params), model:[herramientaInstanceCount: Herramienta.count()]
    }
}
