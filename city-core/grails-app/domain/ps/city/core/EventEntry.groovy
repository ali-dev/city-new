package ps.city.core
import pl.burningice.plugins.image.ast.FileImageContainer

@FileImageContainer(field = 'eventPhoto')
class EventEntry extends Entry{
    Date startTime
    Date endTime
    String location

    static constraints = {
        details blank: false, nullable: false
        location()
        startTime()
        endTime()
    }

    /**
     * get type
     * @return
     */
    def getType() {
        return 'event'
    }
}
