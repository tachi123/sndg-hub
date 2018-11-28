package hub

class BuscarController {

    def index() { 
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

            def herramientas = Herramienta.findAllByNombreIlikeOrDescripcionIlike(q, q, [max: 10, sort: "nombre" ])
            def herramientasCount = Herramienta.countByNombreIlikeOrDescripcionIlike(q, q)

            List<Long> idsDeCentros = [ -1 ] // por si viene nula!

            idsDeCentros.addAll(datos.collect{ it.unidad?.centro?.id })
            idsDeCentros.addAll(herramientas.collect{ it.unidad?.centro?.id })

  //          def centros = Centro.findAllByNombreIlikeOrIdInListOr(q, idsDeCentros,[max: 10, sort: "nombre"])
			def centros = Centro.createCriteria().list(max: 10 , sort: "nombre") {
				or {
					ilike('nombre', q)
					'nombre' in idsDeCentros
					'dependeDe'{
						ilike('nombre',q)
					}
				}
			}
			
			def centrosCount = centros.size()

            respond q, model: [ centrosList: centros,
							 centrosInstanceCount: centrosCount, 
				 			 datosList: datos,
							 datosInstanceCount: datosCount, 
							 herramientasList: herramientas,
							 herramientasInstanceCount : herramientasCount
							  ] 
		} else {
			redirect (uri: '/')
		}
	}
}
