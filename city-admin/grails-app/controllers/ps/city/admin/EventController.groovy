package ps.city.admin

import ps.city.core.EventEntry
import ps.city.core.Page
import ps.city.core.Tag
import ps.city.core.TagType

class EventController {

    def imageUploadService

    def index() {}

    def springSecurityService

    /**
     * edit Event action
     *
     * @param eventId
     * @return
     */
    def editEvent(Long eventId)
    {

        def event = EventEntry.get(eventId);
        if (request.method == 'POST') {
            event.properties = params;
            event.addTags(params.tags)
            def file = request.getFile('eventPhoto')
            if(!file.empty) {
                event.eventPhoto = params.eventPhoto
                imageUploadService.save(event)
            }

            if (event.save(flush: true)) {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'event.label', default: 'Event'), event.title])
                redirect url: createLink(mapping: 'editEvent', params: [eventId: event.id], absolute: true)
                return
            }

        }


        [event: event, tagType: this.getTagType()]
    }

    /**
     * CreateEvent action
     *
     * @param pageId
     * @return
     */
    def createEvent(Long pageId) {
        def event = new EventEntry();
        def page = Page.get(pageId)
        if (request.method == 'POST') {
            event.properties = params;
            event.page = page;
            event.eventPhoto = params.eventPhoto

            event.addTags(params.tags)
            if (!event.save(flush: true)) {
                render(view: "createEvent", model: [event: event, page: page])
                return
            }
            def file = request.getFile('eventPhoto')
            if(!file.empty) {
                imageUploadService.save(event)
            }

            flash.message = message(code: 'default.created.message', args: [message(code: 'event.label', default: 'Event'), event.title])

            redirect url: createLink(mapping: 'editEvent', params: [eventId: event.id], absolute: true)
        }

        [event: event, page: page, tagType: this.getTagType()]
    }

    /**
     * Get event tag type
     *
     * @return
     */
    def getTagType() {
        return TagType.findByName('event')

    }
}
