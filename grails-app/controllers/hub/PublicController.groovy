package hub

class PublicController {

    def centros(Integer max) {
		if (!params.id) {
			params.max = Math.min(max ?: 20, 100)
			if (params.q) {
				def q = "%"+params.q+"%"
				if (params.q == '*')
					q = "%%"
				respond Centro.findAllByNombreIlike(q, [max: 10, offset: params.offset ?: 0]), model:[centroInstanceCount: Centro.countByNombreIlike(q)]
			} else {
				respond Centro.list(params), model:[centroInstanceCount: Centro.count()]
			}		
		} else {
			respond Centro.get(params.id), view: 'verCentro'
		}
		
	}
	
	def datos(Integer max) {
		if (!params.id) {
	        params.max = Math.min(max ?: 10, 100)
			if (params.q) {
				def q = "%"+params.q+"%"
				if (params.q == '*')
					q = "%%"
				respond ConjuntoDeDatos.findAllByNombreIlike(q, [max: 10, offset: params.offset ?: 0]), model:[conjuntoDeDatosInstanceCount: ConjuntoDeDatos.countByNombreIlike(q)]
			} else {
	        	respond ConjuntoDeDatos.list(params), model:[conjuntoDeDatosInstanceCount: ConjuntoDeDatos.count()]
			}
		} else {
			respond ConjuntoDeDatos.get(params.id), view: 'verConjunto'
		}
    }
	
	def herramientas(Integer max) {
		if (!params.id) {
	        params.max = Math.min(max ?: 10, 100)
			if (params.q) {
				def q = "%"+params.q+"%"
				if (params.q == '*')
					q = "%%"
				respond Herramienta.findAllByNombreIlike(q, [max: 10, offset: params.offset ?: 0]), model:[herramientaInstanceCount: Herramienta.countByNombreIlike(q)]

			} else {
	        	respond Herramienta.list(params), model:[herramientaInstanceCount: Herramienta.count()]
			}
		} else {
			respond Herramienta.get(params.id), view: 'verHerramienta'
		}
    }
}