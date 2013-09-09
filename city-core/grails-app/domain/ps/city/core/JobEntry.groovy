package ps.city.core

class JobEntry extends Entry{
    Date dueDate
    // Maybe optional file?

    static constraints = {
    }

    /**
     * get type
     * @return
     */
    def getType() {
        return 'job'
    }
}