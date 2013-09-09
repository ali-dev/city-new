package ps.city.admin

import ps.city.core.Page
import ps.city.core.PhotoEntry
import ps.city.core.TagType

class PhotoController {

    def imageUploadService

    def index() {}

    /**
     * CreateEvent action
     *
     * @param pageId
     * @return
     */
    def createPhoto(Long pageId) {
        def photo = new PhotoEntry();
        def page = Page.get(pageId)


        if (request.method == 'POST') {
            photo.properties = params;
            photo.page = page;
            photo.addTags((List)params.tags)


            def file = request.getFile('photo')
            if (file.empty) {
                photo.errors.rejectValue('photo', 'Photo cannot be empty')
            } else {

                if (!photo.save(flush: true)) {
                    render(view: "createPhoto")

                } else {
                    imageUploadService.save(photo)
                    flash.message = message(code: 'default.created.message', args: [message(code: 'photo.label'), photo.title])
                    redirect url: createLink(mapping: 'editPhoto', params: [photoId: photo.id], absolute: true)
                }
            }



        }


        [photo: photo, page: page, tagType: this.getTagType()]
    }

    /**
     * Edit Photo
     *
     * @param photoId
     */
    def editPhoto(Long photoId) {
        def post = PhotoEntry.get(photoId);
        if (request.method == 'POST') {
            post.properties = params
            post.addTags((List)params.tags)

            if (post.save(flush: true)) {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'photo.label', default: 'Photo'), post.title])
                redirect url: createLink(mapping: 'editPhoto', params: [photoId: post.id], absolute: true)
            }
        }

        [photo: post, tagType: this.getTagType()]
    }


    /**
     * Get art tag type
     *
     * @return
     */
    def getTagType() {
        return TagType.findByName('art')
    }
}
