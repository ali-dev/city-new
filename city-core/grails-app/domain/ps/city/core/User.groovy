package ps.city.core

class User {

	transient springSecurityService

	String username
	String password
	boolean enabled
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired

    String fullName
    String accountType
    String email
    String registered
    String status
    Date dateCreated
    Date lastUpdated

    static final BUSINESS = 'business'
    static final ORGANIZATION = 'organization'
    static final ARTIST = 'artist'
    static final PERSON = 'person'
    // todo: add list of account types to validate against

    static hasMany = [locations: UserLocation, contacts: UserContact, entryLike: UserEntryLike]
    static hasOne = [page: Page]

    static constraints = {
        fullName blank: false
        email blank: false, email: true
		username blank: false, unique: true
		password blank: false
        registered blank: true, nullable: true
	}

	static mapping = {
		password column: '`password`'
	}

	Set<Role> getAuthorities() {
		UserRole.findAllByUser(this).collect { it.role } as Set
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService.encodePassword(password)
	}
}
