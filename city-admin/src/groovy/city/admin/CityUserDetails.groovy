package city.admin

import org.codehaus.groovy.grails.plugins.springsecurity.GrailsUser

import org.springframework.security.core.GrantedAuthority
import org.springframework.security.core.userdetails.User
import ps.city.core.Page

class CityUserDetails extends GrailsUser {

    final String fullName
    final String pageId
    final String imageExtension
    final String email

    CityUserDetails(String username, String password, boolean enabled,
                    boolean accountNonExpired, boolean credentialsNonExpired,
                    boolean accountNonLocked,
                    Collection<GrantedAuthority> authorities,
                    long id, String fullName, Page page, String email) {
        super(username, password, enabled, accountNonExpired,
                credentialsNonExpired, accountNonLocked, authorities, id)

        this.fullName = fullName
        this.email = email
        this.pageId = page.id
        this.imageExtension = page.imageExtension
    }
}