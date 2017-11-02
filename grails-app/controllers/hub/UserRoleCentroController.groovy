package hub



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UserRoleCentroController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond UserRoleCentro.list(params), model:[userRoleCentroInstanceCount: UserRoleCentro.count()]
    }

    def show(UserRoleCentro userRoleCentroInstance) {
        respond userRoleCentroInstance
    }

    def create() {
        respond new UserRoleCentro(params)
    }

    @Transactional
    def save(UserRoleCentro userRoleCentroInstance) {
        if (userRoleCentroInstance == null) {
            notFound()
            return
        }

        if (userRoleCentroInstance.hasErrors()) {
            respond userRoleCentroInstance.errors, view:'create'
            return
        }

        userRoleCentroInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'userRoleCentro.label', default: 'UserRoleCentro'), userRoleCentroInstance.id])
                redirect action: 'index'
				//redirect userRoleCentroInstance
            }
            '*' { respond userRoleCentroInstance, [status: CREATED] }
        }
    }

    def edit(UserRoleCentro userRoleCentroInstance) {
        respond userRoleCentroInstance
    }

    @Transactional
    def update(UserRoleCentro userRoleCentroInstance) {
        if (userRoleCentroInstance == null) {
            notFound()
            return
        }

        if (userRoleCentroInstance.hasErrors()) {
            respond userRoleCentroInstance.errors, view:'edit'
            return
        }

        userRoleCentroInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'UserRoleCentro.label', default: 'UserRoleCentro'), userRoleCentroInstance.id])
                redirect userRoleCentroInstance
            }
            '*'{ respond userRoleCentroInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(UserRoleCentro userRoleCentroInstance) {

        if (userRoleCentroInstance == null) {
            notFound()
            return
        }

        userRoleCentroInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'UserRoleCentro.label', default: 'UserRoleCentro'), userRoleCentroInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'userRoleCentro.label', default: 'UserRoleCentro'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
