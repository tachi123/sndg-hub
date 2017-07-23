import groovy.sql.Sql
import hub.User

class BootStrap {

	def dataSource

	def init = { servletContext ->
/*
		def sql = new Sql(dataSource)
		String dml = 'ALTER TABLE conjunto_de_datos ALTER COLUMN PROYECTO_DESCRIPCION TEXT'
        sql.execute(dml)
        dml = 'ALTER TABLE conjunto_de_datos ALTER COLUMN COLABORADORES TEXT'
		sql.execute(dml)

        dml = 'ALTER TABLE herramienta ALTER COLUMN PROYECTO_DESCRIPCION TEXT'
        sql.execute(dml)
        dml = 'ALTER TABLE herramienta ALTER COLUMN COLABORADORES TEXT'
        sql.execute(dml)
*/
        def elAdmin = User.findByUsername('admin')
        if (!elAdmin) {
            elAdmin = new User()
            elAdmin.username = 'admin'
            elAdmin.password = '123'
            elAdmin.save()
        }
    }
    def destroy = {
    }
}
