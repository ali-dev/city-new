package ps.city.repository

import org.springframework.transaction.annotation.Transactional
import ps.city.core.User;

class UserRepositoryService {

    @Transactional(readOnly = true)
    def listActiveUsersExcluding(String userType) {
        def criteria = User.createCriteria()
        def results = criteria.list() {
            notEqual("accountType", userType)
            eq("enabled", true)
        }


        return results;

    }
}
