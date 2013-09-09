package ps.city.admin

import ps.city.core.Entry;

class PostController {

    def imageUploadService
    def index() {
        def posts = Entry.getAll()
        [posts: posts]
    }

    def edit(Long id) {
        def post = Entry.get(id);

        switch (post.getType()) {
            case 'event':
                redirect url: createLink(mapping: 'editEvent', params: [eventId: id], absolute: true)
                break;
            case 'job':
                redirect url: createLink(mapping: 'editJob', params: [jobId: id], absolute: true)
                break;
            case 'photo':
                redirect url: createLink(mapping: 'editPhoto', params: [photoId: id], absolute: true)
                break;
            case 'video':
                redirect url: createLink(mapping: 'editVideo', params: [videoId: id], absolute: true)
                break;
        }
    }

    /**
     * Update post status
     *
     * @param id
     * @param status
     * @return
     */
    def updateStatus(Long id, String status) {

        def post = Entry.get(id);
        /**
         * @todo: fix this
         */
//        if (post.status.getStatusList().findAll().contains(status)) {
//            render 'this is a test';
//            return
//            post.status.ApprovalStatus(status)
//            post.save()
//        }
        post.status = status
        post.save()

        [post: post]

    }

    def view(Long id) {
        def post = Entry.get(id)

        [post: post]
    }

}