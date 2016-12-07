class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
		"/centros" {
			controller = 'public'
			action = 'centros'
		}
		"/datos" {
			controller = 'public'
			action = 'datos'
		}
		"/herramientas" {
			controller = 'public'
			action = 'herramientas'
		}
		"/buscar" {
			controller = 'buscar'
			action = 'index'
		}
        "/"(view:"/index")
        "500"(view:'/error')
	}
}
