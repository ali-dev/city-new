package ps.city.core
import pl.burningice.plugins.image.ast.FileImageContainer

@FileImageContainer(field = 'photo')
class PhotoEntry extends Entry{
    static constraints = {
    }

    /**
     * get type
     * @return
     */
    def getType() {
        return 'photo'
    }
}