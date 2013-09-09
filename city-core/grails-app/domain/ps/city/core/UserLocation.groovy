package ps.city.core

class UserLocation {
    String city
    String address
    static belongsTo = [user: User]

    static constraints = {
        city blank: false
        address blank: false
    }
}
