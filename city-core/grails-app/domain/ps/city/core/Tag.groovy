package ps.city.core

class Tag {
    def slugGeneratorService
    String name
    String slug = ""
    static belongsTo = [TagType, Entry, Page]
    static hasMany = [tagTypes: TagType, entries: Entry, pages: Page]

    static mapping = {
        tagTypes joinTable:[name:"tag_tag_type", key:'tag_id']
    }

    static constraints = {
        name blank: false
    }


    def beforeInsert() {
        this.slug = slugGeneratorService.generateSlug(this.class, "slug", name)
    }

    def beforeUpdate() {
        if (isDirty('title')) {
            this.slug = slugGeneratorService.generateSlug(this.class, "slug", name)
        }
    }
}