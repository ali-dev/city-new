package ps.city.core

class UserEntryLike {
    static hasOne = [user: User, entry: Entry] //entry: Entry

    static constraints = {
    }
}
