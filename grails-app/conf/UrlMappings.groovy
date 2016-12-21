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
		"/buscar" {
			controller = 'buscar'
			action = 'index'
		}
        "/"(view:"/index")
        "500"(view:'/error')
	}
}
