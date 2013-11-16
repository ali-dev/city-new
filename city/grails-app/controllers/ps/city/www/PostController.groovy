package ps.city.www

import ps.city.core.Entry;

class PostController {

    def index() {}

    def view(Long id) {
        def post = Entry.get(id)

        [post: post]
    }
}
