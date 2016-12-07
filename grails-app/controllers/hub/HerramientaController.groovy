package hub



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class HerramientaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Herramienta.list(params), model:[herramientaInstanceCount: Herramienta.count()]
    }

    def show(Herramienta herramientaInstance) {
        respond herramientaInstance
    }

    def create() {
        respond new Herramienta(params)
    }

    @Transactional
    def save(Herramienta herramientaInstance) {
        if (herramientaInstance == null) {
            notFound()
            return
        }

        if (herramientaInstance.hasErrors()) {
            respond herramientaInstance.errors, view:'create'
            return
        }

        herramientaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'herramienta.label', default: 'Herramienta'), herramientaInstance.id])
                redirect herramientaInstance
            }
            '*' { respond herramientaInstance, [status: CREATED] }
        }
    }

    def edit(Herramienta herramientaInstance) {
        respond herramientaInstance
    }

    @Transactional
    def update(Herramienta herramientaInstance) {
        if (herramientaInstance == null) {
            notFound()
            return
        }

        if (herramientaInstance.hasErrors()) {
            respond herramientaInstance.errors, view:'edit'
            return
        }

        herramientaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Herramienta.label', default: 'Herramienta'), herramientaInstance.id])
                redirect herramientaInstance
            }
            '*'{ respond herramientaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Herramienta herramientaInstance) {

        if (herramientaInstance == null) {
            notFound()
            return
        }

        herramientaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Herramienta.label', default: 'Herramienta'), herramientaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'herramienta.label', default: 'Herramienta'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
