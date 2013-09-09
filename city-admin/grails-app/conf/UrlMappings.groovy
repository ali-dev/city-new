class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}



        "/"(view:"/index")
		"500"(view:'/error')

        "/user/list/$accountType" (controller = 'user', action = 'list', view: '/user/list')

        "/user/$id/edit" (controller = 'user', action = 'edit', view: '/user/edit')

        "/event/$pageId/create" (controller = 'post', action = 'createEvent', view: '/event/createEvent')

        name dashboard: "/dashboard" {
            controller = 'dashboard'
            action = 'index'
        }

        name addUser: "/user/$type/add" {
            controller = 'user'
            action = 'create'
        }

        name editEvent: "/event/$eventId/edit" {
            controller = 'event'
            action = 'editEvent'
        }

        name editJob: "/job/$jobId/edit" {
            controller = 'job'
            action = 'editJob'
        }
        name createJob: "/job/$pageId/create" {
            controller = 'job'
            action = 'createJob'
        }

        name createPhoto: "/photo/$pageId/create" {
            controller = 'photo'
            action = 'createPhoto'
        }

        name editPhoto: "/photo/$photoId/edit" {
            controller = 'photo'
            action = 'editPhoto'
        }

        name editVideo: "/video/$videoId/edit" {
            controller = 'video'
            action = 'editVideo'
        }

        name createVideo: "/video/$pageId/create" {
            controller = 'video'
            action = 'createVideo'
        }



        name editPost: "/edit/$id/post" {
            controller = 'post'
            action = 'edit'
        }

        name viewPost: "/view/$id/post" {
            controller = 'post'
            action = 'view'
        }
        name listPosts: "/posts/list" {
            controller = 'post'
            action = 'index'
        }

        name updatePostStatus: "/post/$id/status/$status" {
            controller = 'post'
            action = 'updateStatus'
        }


    }
}
