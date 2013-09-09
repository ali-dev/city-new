package ps.city.admin

import ps.city.core.JobEntry
import ps.city.core.Page
import ps.city.core.TagType

class JobController {

    def index() {}

    /**
     * Edit Job
     *
     * @param jobId
     */
    def editJob(Long jobId) {
        def post = JobEntry.get(jobId);
        if (request.method == 'POST') {
            post.properties = params;
            post.addTags((List)params.tags)
            if (post.save(flush: true)) {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'job.label', default: 'Job'), post.title])
                redirect url: createLink(mapping: 'editJob', params: [jobId: post.id], absolute: true)
                return
            }

        }
        [job: post, tagType: this.getTagType()]
    }

    def createJob(Long pageId) {
        def page = Page.get(pageId);
        def post = new JobEntry()
        if (request.method == 'POST') {
            post.properties = params;
            post.page = page
            post.addTags((List)params.tags)
            if (post.save(flush: true)) {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'job.label', default: 'Job'), post.title])
                redirect url: createLink(mapping: 'editJob', params: [jobId: post.id], absolute: true)
                return
            }

        }
        [job: post, page: page, tagType: this.getTagType()]
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
