package ps.city.admin

import org.springframework.dao.DataIntegrityViolationException
import ps.city.core.Page
import ps.city.core.TagType
import ps.city.core.User
import ps.city.core.UserContact
import ps.city.core.UserLocation;

class UserController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def imageUploadService

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
//        render params.accountType;
//        params.max = Math.min(max ?: 10, 100)
//          def list = User.List(params)
        def list = User.findAll();
        if (params.accountType) {
            list = User.findAllByAccountType(params.accountType)
        }

        [userInstanceList: list, userInstanceTotal: 50]
    }

    def create(String type) {
        def user = new User()
        def page = new Page()
        user.accountType =type
        def tags = TagType.findByName(type)
        if (request.method == 'POST') {
            page.addTags((List)params.tags)
            page.details = params.details
            page.logo = params.logo
            user.page = page

            user.password = params.password
            user.fullName = params.fullName
            user.email = params.email
            user.status = 'Approved'
            user.username = params.email
            user.page = page
            if (!user.save(flush: true)) {
                render(view: "create", model: [userInstance: user, tagType: tags, type: type, page: page])
                return
            }
            def file = request.getFile('logo')
            if (!file.empty) {
                imageUploadService.save(page, true)
            }

            flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), user.fullName])
            redirect(action: "edit", id: user.id)

        }


        [userInstance: user, tagType: tags, type: type, page: page]
    }


    def show(Long id) {
        def userInstance = User.get(id)
        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "list")
            return
        }

        [userInstance: userInstance]
    }

    /**
     * Edit action
     *
     * @param cmd
     * @param id
     * @return
     *
     */
    def edit(UserCreateCommand cmd, Long id) {
        //@Secured(['ROLE_ADMIN'])
        def userInstance = User.get(id)
        def page = userInstance.page
        def tagType = TagType.findByName(userInstance.accountType)

        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "list")
            return
        }

        if (request.method == 'POST') {
            def file = request.getFile('photo')

            userInstance = cmd.updateUser(userInstance)

            page.addTags(params.tags)
            page.logo = params.logo
            page.save()

            params.contact.findAll {k,v -> !k.contains(".")}.each { k,v ->
                if (v.id) {
                    def userContact = UserContact.get(v.id)
                    userContact.type = v.type
                    userContact.details = v.det
                    userContact.save(flush: true)
                } else {
                    userInstance.addToContacts(type: v.type, details: v.det , user: userInstance)
                }
            }

            params.location.findAll {k,v -> !k.contains(".")}.each { k,v ->
                if (v.id) {
                    def userLocation = UserLocation.get(v.id)
                    userLocation.city = v.city
                    userLocation.address = v.address
                    userLocation.save(flush: true)
                } else {
                    userInstance.addToLocations(city: v.city, address: v.address , user: userInstance)
                }
            }

            params.newContacts.findAll {k,v -> !k.contains(".")}.each { k,v ->
                userInstance.addToContacts(type: v.type, details: v.det , user: userInstance)
            }



            params.newLocation.findAll {k,v -> !k.contains(".")}.each { k,v ->
                userInstance.addToLocations(city: v.city, address: v.address , user: userInstance)
            }
            if (!userInstance.save(flush: true)) {
                render(view: "edit", model: [userInstance: userInstance, tagType: tagType])
                return
            }
            if (!file.empty) {
                page.save(flush: true)
                imageUploadService.save(page)
            }


            flash.message = message(code: 'default.updated.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
            redirect(action: "edit", id: id)


        }
        [userInstance: userInstance, tagType: tagType]
    }

    /**
     *
     * @param id
     * @return
     */
    def delete(Long id) {
        def userInstance = User.get(id)
        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "list")
            return
        }

        try {
            userInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "show", id: id)
        }
    }
}

/**
 * Command object
 */
class UserCreateCommand{
    Long id
    String fullName
    String email

    String status
    String type
    String details
    String det

    User updateUser(User user) {
        user.fullName = fullName
        user.email = email
        return user

    }

}

