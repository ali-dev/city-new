package ps.city.repository

import org.springframework.transaction.annotation.Transactional
import ps.city.core.Tag;

class TagRepositoryService {

    def getTagsByType() {
        Tag.list()
    }
}
