package ps.city.admin
import ps.city.core.Entry
class DashboardController {

    def index() {
        def posts = Entry.withCriteria {
            order "dateCreated", "desc"
            maxResults 10
        }

        [posts: posts]
    }
}
