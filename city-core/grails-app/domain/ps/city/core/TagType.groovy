package ps.city.core

class TagType {
    String name
    static hasMany = [tags: Tag]

    static mapping = {
        tags joinTable:[name:"tag_tag_type", key:'tag_type_id']
    }
    static constraints = {
    }
}
