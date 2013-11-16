package ps.city.www

import ps.city.repository.EntryRepositoryService
import ps.city.repository.UserRepositoryService

import ps.city.core.Tag

class HomeController {

    EntryRepositoryService entryRepositoryService

    UserRepositoryService userRepositoryService
    Map filters = [searchTerms: '', tags: []];
    def index() {

        if (request.method == 'POST') {
            this.filters['searchTerms'] = params.searchTerms
            this.filters['postedBy'] = params.postedBy
            this.filters['tags'] = params.tags
            render this.filters['tags'];
        }
        def entries = this.entryRepositoryService.listEntries(25, 0, 'latest', this.filters);
        def usersList = this.userRepositoryService.listActiveUsersExcluding('person');

//        [entries: entries, tags : Tag.findAll(), usersList: usersList];
        if (request.xhr) {
            render(view: 'raw-list', model: [entries: entries])
        } else {
            render(view: 'index', model: [entries: entries, tags : Tag.findAll(), usersList: usersList])
        }
    }

    def jobs() {}

    def events() {}

    def arts() {}

    def restaurants() {}

    def businesses() {}

    def organizations() {}



}
