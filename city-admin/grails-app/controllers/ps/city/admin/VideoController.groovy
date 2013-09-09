package ps.city.admin

import ps.city.core.TagType
import ps.city.core.VideoEntry
import ps.city.core.Page
import ps.city.core.Tag


class VideoController {

    def index() {}


    /**
     * Edit video
     *
     * @param videoId
     */
    def editVideo(Long videoId) {
        def post = VideoEntry.get(videoId);
        if (request.method == 'POST') {
            post.properties = params;
            post.addTags((List)params.tags)

            if (post.save(flush: true)) {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'video.label', default: 'Video'), post.title])
                redirect url: createLink(mapping: 'editVideo', params: [videoId: post.id], absolute: true)
                return
            }

        }

        [video: post, tagType: this.getTagType()]
    }


    /**
     * Create video
     *
     * @param videoId
     */
    def createVideo(Long pageId) {
        def page = Page.get(pageId)
        def post = new VideoEntry();
        if (request.method == 'POST') {
            post.properties = params;
            post.page = page;
            post.addTags((List)params.tags)

            if (post.save(flush: true)) {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'video.label', default: 'Video'), post.title])
                redirect url: createLink(mapping: 'editVideo', params: [videoId: post.id], absolute: true)
                return
            }

        }
        [video: post, page: page, tagType: this.getTagType()]
    }

    /**
     * Get event tag type
     *
     * @return
     */
    def getTagType() {
        return TagType.findByName('job')

    }

}
