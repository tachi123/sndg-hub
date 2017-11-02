package hub

class PublicController {
	
	def springSecurityService
	
    def centros(Integer max) {
		if (!params.id) {
			params.max = Math.min(max ?: 20, 100)
			if (params.q) {
				def q = "%"+params.q+"%"
				if (params.q == '*')
					q = "%%"
	    def datos = ConjuntoDeDatos.createCriteria().list(max: 10 , sort: "nombre") {
			or { ilike('descripcion', q)
			     ilike('nombre', q) 
			     ilike('tipoDeOrganismo', q) 
			     ilike('tipoDeComunidad', q) }
	    }
            def datosCount = datos.totalCount

                def herramientas = Herramienta.findAllByNombreIlikeOrDescripcionIlike(q, q )
		List<Long> idsDeCentros = [ -1 ]
                idsDeCentros.addAll(datos.collect{ it.unidad?.centro?.id })
                idsDeCentros.addAll(herramientas.collect{ it.unidad?.centro?.id })
				respond Centro.findAllByNombreIlikeOrIdInList(q, idsDeCentros, [max: 10, offset: params.offset ?: 0, sort: "nombre"]), model:[centroInstanceCount: Centro.countByNombreIlikeOrIdInList(q, idsDeCentros)]
			} else {
				respond Centro.list(params), model:[centroInstanceCount: Centro.count()]
			}		
		} else {
			respond Centro.get(params.id), view: 'verCentro'
		}
		
	}
	
	def datos(Integer max) {
		params.sort = "nombre"
		if (!params.id) {
	        params.max = Math.min(max ?: 10, 100)
			if (params.q) {				
				def q = "%"+params.q+"%"
				if (params.q == '*')
					q = "%%"
			    def datos = ConjuntoDeDatos.createCriteria().list(max: 10 , offset: params.offset ?: 0, sort: "nombre") {
					or { ilike('descripcion', q)
					     ilike('nombre', q) 
					     ilike('tipoDeOrganismo', q) 
					     ilike('tipoDeComunidad', q) }
			    }
			    def datosCount = datos.totalCount

				respond datos, model:[conjuntoDeDatosInstanceCount: datosCount]
			} else {
				if (params.centroId) {
					def losDatos = ConjuntoDeDatos.createCriteria().list(params) {
						unidad {
							centro {
								eq('singiID', params.centroId)
							}
						}
						order('orden', 'asc')
						order('nombre', 'asc')
					}
					respond losDatos, model:[conjuntoDeDatosInstanceCount: losDatos.totalCount]
				} else {
					respond ConjuntoDeDatos.list(params), model:[conjuntoDeDatosInstanceCount: ConjuntoDeDatos.count()]
				}
			}
		} else {
		
		def user = springSecurityService.currentUser
		
		def userRoleCentro = null
		if(user != null) userRoleCentro = UserRoleCentro.get(user.id, 2.toLong(), 8.toLong())
		//UserRoleCentro.get(2.toLong(),2.toLong(), params.id.toString().toLong()),
		
//		Map paramsdata = [
//		    conjuntoDeDatos: ConjuntoDeDatos.get(params.id),
//			userRoleCentro: userRoleCentro
//		]
			respond ConjuntoDeDatos.get(params.id), view: 'verConjunto'
		}
    }
	
	def herramientas(Integer max) {
		params.sort = "nombre"
		if (!params.id) {
	        params.max = Math.min(max ?: 10, 100)
			if (params.q) {
				def q = "%"+params.q+"%"
				if (params.q == '*')
					q = "%%"
				respond Herramienta.findAllByNombreIlikeOrDescripcionIlike(q, q, [max: 10, offset: params.offset ?: 0, sort: "nombre"]), model:[herramientaInstanceCount: Herramienta.countByNombreIlike(q)]

			} else {
				if (params.centroId) {
					def losDatos = Herramienta.createCriteria().list(params) {
						unidad {
							centro {
								eq('singiID', params.centroId)
							}
						}
						order('nombre', 'asc')
					}
					respond losDatos, model:[herramientaInstanceCount: losDatos.totalCount]
				} else {
					respond Herramienta.list(params), model:[herramientaInstanceCount: Herramienta.count()]
				}
			}
		} else {
			respond Herramienta.get(params.id), view: 'verHerramienta'
		}
    }
}
