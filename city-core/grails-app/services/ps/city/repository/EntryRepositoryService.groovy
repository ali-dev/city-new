package ps.city.repository

import org.springframework.transaction.annotation.Transactional
import ps.city.core.Entry;
class EntryRepositoryService {

    @Transactional(readOnly = true)
    def listEntries(Long limit,Long offset, String order, Map filters) {


        def c = Entry.createCriteria()
        def results = c.list(max: 1000, offset: offset, sort: "dateCreated", order: 'desc') {
            and {
                if (filters?.get('searchTerms')) {
                    like("title", "%"+filters.get('searchTerms')+"%")
                }
                if (filters?.get('postedBy')) {
                    page {
                        user {
                            eq("fullName", filters.get('postedBy'))
                        }
                    }
                }
                if (filters?.get('tags')) {
                    tags {
                        inList('slug', filters.get('tags'))
                    }
                }

            }

        }


        return results;
    }
}
