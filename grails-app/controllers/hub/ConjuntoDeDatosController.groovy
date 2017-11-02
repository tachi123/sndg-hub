package hub



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ConjuntoDeDatosController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ConjuntoDeDatos.list(params), model:[conjuntoDeDatosInstanceCount: ConjuntoDeDatos.count()]
    }

    def show(ConjuntoDeDatos conjuntoDeDatosInstance) {
        respond conjuntoDeDatosInstance
    }

    def create() {
        respond new ConjuntoDeDatos(params)
    }

    @Transactional
    def save(ConjuntoDeDatos conjuntoDeDatosInstance) {
        if (conjuntoDeDatosInstance == null) {
            notFound()
            return
        }

        if (conjuntoDeDatosInstance.hasErrors()) {
            respond conjuntoDeDatosInstance.errors, view:'create'
            return
        }

        conjuntoDeDatosInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'conjuntoDeDatos.label', default: 'ConjuntoDeDatos'), conjuntoDeDatosInstance.id])
                redirect conjuntoDeDatosInstance
            }
            '*' { respond conjuntoDeDatosInstance, [status: CREATED] }
        }
    }

    def edit(ConjuntoDeDatos conjuntoDeDatosInstance) {
        respond conjuntoDeDatosInstance
    }

    @Transactional
    def update(ConjuntoDeDatos conjuntoDeDatosInstance) {
        if (conjuntoDeDatosInstance == null) {
            notFound()
            return
        }

        if (conjuntoDeDatosInstance.hasErrors()) {
            respond conjuntoDeDatosInstance.errors, view:'edit'
            return
        }

        conjuntoDeDatosInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ConjuntoDeDatos.label', default: 'ConjuntoDeDatos'), conjuntoDeDatosInstance.id])
                redirect conjuntoDeDatosInstance
            }
            '*'{ respond conjuntoDeDatosInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ConjuntoDeDatos conjuntoDeDatosInstance) {

        if (conjuntoDeDatosInstance == null) {
            notFound()
            return
        }

        conjuntoDeDatosInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ConjuntoDeDatos.label', default: 'ConjuntoDeDatos'), conjuntoDeDatosInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'conjuntoDeDatos.label', default: 'ConjuntoDeDatos'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
