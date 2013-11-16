class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

//        "/"(view:"/index")
        "/"
        {
            controller = "home"
            action = "index"
        }
		"500"(view:'/error')

        name viewPost: "/view/$id/post" {
            controller = 'post'
            action = 'view'
        }

	}
}
