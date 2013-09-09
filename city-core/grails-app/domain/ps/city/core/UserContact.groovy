package ps.city.core

class UserContact {
    String type
    String details

    static belongsTo = [user: User]

    static constraints = {
        type blank: false
        details blank: false
    }
}