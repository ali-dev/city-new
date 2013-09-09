package ps.city.core
import pl.burningice.plugins.image.ast.FileImageContainer

@FileImageContainer(field = 'logo')
class Page {
    String details
    User user
    static hasMany = [entries: Entry, tags: Tag]
    static constraints = {
    }

    /**
     * Adds/removes tags for an entry
     */
    def addTags(newTags) {
        newTags = [newTags].flatten().findAll { it != null }

        def currentTags = this.tags
        def tagsToRemove = []

        currentTags.each {it ->
            if (!newTags.contains(it.id)) {
                tagsToRemove.add it
            }
        }

        tagsToRemove.each {it ->
            this.removeFromTags(it)
        }
        newTags.each {it ->
            def newTag = Tag.get(it);
            if (!currentTags?.contains(newTag)) {
                this.addToTags(Tag.get(it))
            }
        }
    }
}
