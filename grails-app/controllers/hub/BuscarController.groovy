package hub

class BuscarController {

    def index() { 
    	if (params.q) {
    		def q = "%"+params.q+"%"
			if (params.q == '*')
				q = "%%"
			def centros = Centro.findAllByNombreIlike(q, [max: 10])
			def centrosCount = Centro.countByNombreIlike(q) 
			def datos = ConjuntoDeDatos.findAllByNombreIlike(q, [max: 10 ])
			def datosCount = ConjuntoDeDatos.countByNombreIlike(q)
			def herramientas = Herramienta.findAllByNombreIlike(q, [max: 10 ])
			def herramientasCount = Herramienta.countByNombreIlike(q)
			System.out.println(datos)
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
