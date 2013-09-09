package ps.city.core

class Entry {
    def slugGeneratorService
    String title
    String details
    Integer likes = 0
    String slug = ""
    Date dateCreated
    Date lastUpdated

    ApprovalStatus status
    static final PENDING = 'PENDING'
    static final APPROVED = 'APPROVED'
    static final REJECTED = 'REJECTED'

    static belongsTo = [page: Page]
    static hasMany = [entryLike: UserEntryLike, tags: Tag]


    static constraints = {
        title blank: false
        status blank: false
    }
    static mapping = {
        likes defaultValue: 0;
        details type: 'text'
//        status defaultValue: 'PENDING'

    }

    def beforeInsert() {
          this.slug = slugGeneratorService.generateSlug(this.class, "slug", title)
      }

    def beforeUpdate() {
      if (isDirty('title')) {
          this.slug = slugGeneratorService.generateSlug(this.class, "slug", title)
      }
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
            if (!currentTags.contains(newTag)) {
                this.addToTags(Tag.get(it))
            }
        }
    }

    def getUser() {
        return this.page.user
    }

}

public enum ApprovalStatus {
    PENDING("PENDING"), APPROVED("APPROVED"), REJECTED("REJECTED")
    private List statuses = [PENDING, APPROVED, REJECTED]
    final String value

    ApprovalStatus(String value) { this.value = value }
    String getKey() { name() }
    String toString() { value }

    List getStatusList() {
         return statuses
    }

    def isPending() {
        return this.value == 'PENDING';
    }


    def isApproved() {
        return this.value == 'APPROVED';
    }

    def isRejected() {
        return this.value == 'REJECTED';
    }
}