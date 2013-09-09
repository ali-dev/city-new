package ps.city



import org.junit.*
import grails.test.mixin.*

@TestFor(EventEntryController)
@Mock(EventEntry)
class EventEntryControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/eventEntry/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.eventEntryInstanceList.size() == 0
        assert model.eventEntryInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.eventEntryInstance != null
    }

    void testSave() {
        controller.save()

        assert model.eventEntryInstance != null
        assert view == '/eventEntry/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/eventEntry/show/1'
        assert controller.flash.message != null
        assert EventEntry.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/eventEntry/list'

        populateValidParams(params)
        def eventEntry = new EventEntry(params)

        assert eventEntry.save() != null

        params.id = eventEntry.id

        def model = controller.show()

        assert model.eventEntryInstance == eventEntry
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/eventEntry/list'

        populateValidParams(params)
        def eventEntry = new EventEntry(params)

        assert eventEntry.save() != null

        params.id = eventEntry.id

        def model = controller.edit()

        assert model.eventEntryInstance == eventEntry
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/eventEntry/list'

        response.reset()

        populateValidParams(params)
        def eventEntry = new EventEntry(params)

        assert eventEntry.save() != null

        // test invalid parameters in update
        params.id = eventEntry.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/eventEntry/edit"
        assert model.eventEntryInstance != null

        eventEntry.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/eventEntry/show/$eventEntry.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        eventEntry.clearErrors()

        populateValidParams(params)
        params.id = eventEntry.id
        params.version = -1
        controller.update()

        assert view == "/eventEntry/edit"
        assert model.eventEntryInstance != null
        assert model.eventEntryInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/eventEntry/list'

        response.reset()

        populateValidParams(params)
        def eventEntry = new EventEntry(params)

        assert eventEntry.save() != null
        assert EventEntry.count() == 1

        params.id = eventEntry.id

        controller.delete()

        assert EventEntry.count() == 0
        assert EventEntry.get(eventEntry.id) == null
        assert response.redirectedUrl == '/eventEntry/list'
    }
}
