package hub

class BuscarController {

    def index() { 
    	if (params.q) {
    		def q = "%"+params.q+"%"
			if (params.q == '*')
				q = "%%"
			def datos = ConjuntoDeDatos.findAllByNombreIlikeOrDescripcionIlike(q, q, [max: 10 , sort: "nombre"])
            def datosCount = ConjuntoDeDatos.countByNombreIlikeOrDescripcionIlike(q, q)
            def herramientas = Herramienta.findAllByNombreIlikeOrDescripcionIlike(q, q, [max: 10, sort: "nombre" ])
            def herramientasCount = Herramienta.countByNombreIlikeOrDescripcionIlike(q, q)
            List<Long> idsDeCentros = datos.collect{ it.unidad?.centro?.id }
            idsDeCentros.addAll(herramientas.collect{ it.unidad?.centro?.id })

            def centros = Centro.findAllByNombreIlikeOrIdInList(q, idsDeCentros, [max: 10, sort: "nombre"])
            def centrosCount = Centro.countByNombreIlikeOrIdInList(q, idsDeCentros)

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
