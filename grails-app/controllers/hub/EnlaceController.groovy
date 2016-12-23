package hub



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EnlaceController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Enlace.list(params), model:[enlaceInstanceCount: Enlace.count()]
    }

    def show(Enlace enlaceInstance) {
        respond enlaceInstance
    }

    def create() {
        respond new Enlace(params)
    }

    @Transactional
    def save(Enlace enlaceInstance) {
        if (enlaceInstance == null) {
            notFound()
            return
        }

        if (enlaceInstance.hasErrors()) {
            respond enlaceInstance.errors, view:'create'
            return
        }

        enlaceInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'enlace.label', default: 'Enlace'), enlaceInstance.id])
                redirect enlaceInstance
            }
            '*' { respond enlaceInstance, [status: CREATED] }
        }
    }

    def edit(Enlace enlaceInstance) {
        respond enlaceInstance
    }

    @Transactional
    def update(Enlace enlaceInstance) {
        if (enlaceInstance == null) {
            notFound()
            return
        }

        if (enlaceInstance.hasErrors()) {
            respond enlaceInstance.errors, view:'edit'
            return
        }

        enlaceInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Enlace.label', default: 'Enlace'), enlaceInstance.id])
                redirect enlaceInstance
            }
            '*'{ respond enlaceInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Enlace enlaceInstance) {

        if (enlaceInstance == null) {
            notFound()
            return
        }

        enlaceInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Enlace.label', default: 'Enlace'), enlaceInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'enlace.label', default: 'Enlace'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
