package city.admin

import org.codehaus.groovy.grails.plugins.springsecurity.GrailsUser

import org.springframework.security.core.GrantedAuthority
import org.springframework.security.core.userdetails.User
import ps.city.core.Page

class CityUserDetails extends GrailsUser {

    final String fullName
    final String pageId

    CityUserDetails(String username, String password, boolean enabled,
                    boolean accountNonExpired, boolean credentialsNonExpired,
                    boolean accountNonLocked,
                    Collection<GrantedAuthority> authorities,
                    long id, String fullName, Page page) {
        super(username, password, enabled, accountNonExpired,
                credentialsNonExpired, accountNonLocked, authorities, id)

        this.fullName = fullName
        this.pageId = page.id

    }
}