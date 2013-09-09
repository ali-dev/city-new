package ps.city.core

class VideoEntry extends Entry{
    String videoType
    String url

    static constraints = {
    }
    def beforeInsert() {

    }

    /**
     * get type
     *
     * @return
     */
    def getType() {
        return 'video'
    }
}
