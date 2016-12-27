class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
		"/centros/$id?" {
			controller = 'public'
			action = 'centros'
		}
		"/datos/$id?" {
			controller = 'public'
			action = 'datos'
		}
		"/herramientas/$id?" {
			controller = 'public'
			action = 'herramientas'
		}
		"/navegador" {
			controller = 'estatica'
			action = 'navegador'
		}
		"/estadisticas" {
			controller = 'estatica'
			action = 'estadisticas'
		}
		"/buscar" {
			controller = 'buscar'
			action = 'index'
		}
		"/administrar"(view:"/administrar")
		"/"(view:"/index")
        "500"(view:'/error')
	}
}
