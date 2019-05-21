package hub

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional;

class PublicController {
	
	def springSecurityService
	
	def grailsApplication
	
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
			def losDatos = Herramienta.createCriteria().list(params) {
				unidad {
					centro {
						eq('singiID', Centro.get(params.id).getSingiID())
					}
				}
			}
			respond Centro.get(params.id), model:[herramientaInstanceCount: losDatos.totalCount], view: 'verCentro'
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
	
	static allowedMethods = [update: "POST"]
	
	def cambiarContrasenia(Integer max) {
		
		def user = springSecurityService.currentUser
		
        respond user
	}
	
	def downloadInstructivo() {
		
		def file = new File(grailsApplication.config.dataFolder+"instructivoCarga.pdf")
		if (file.exists()) {
			
			response.setContentType("APPLICATION/OCTET-STREAM")
			response.setHeader("Content-Disposition", "Attachment;Filename=\"10 pasos para compartir Recursos en el Portal de Datos Genomicos.pdf\"")
			response.outputStream << file.bytes
			return
		}

	}
	
	@Transactional
	def update(User userInstance) {
		if (userInstance == null) {
			notFound()
			return
		}

		if (userInstance.hasErrors()) {
			respond userInstance.errors, view:'cambiarContrasenia'
			return
		}

		userInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.updated.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
				redirect(url:'/')
			}
			'*'{ respond userInstance, [status: OK] }
		}
	}
}
