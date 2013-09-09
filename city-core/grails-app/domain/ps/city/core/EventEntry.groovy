package ps.city.core

class EventEntry extends Entry{
    Date startTime
    Date endTime
    String location

    static constraints = {
    }

    /**
     * get type
     * @return
     */
    def getType() {
        return 'event'
    }
}
