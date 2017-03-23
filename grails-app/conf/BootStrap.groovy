import groovy.sql.Sql

class BootStrap {

	def dataSource

	def init = { servletContext ->
		def sql = new Sql(dataSource)
		String dml = 'ALTER TABLE conjunto_de_datos ALTER COLUMN PROYECTO_DESCRIPCION TEXT'
        sql.execute(dml)
        dml = 'ALTER TABLE conjunto_de_datos ALTER COLUMN COLABORADORES TEXT'
		sql.execute(dml)

        dml = 'ALTER TABLE herramienta ALTER COLUMN PROYECTO_DESCRIPCION TEXT'
        sql.execute(dml)
        dml = 'ALTER TABLE herramienta ALTER COLUMN COLABORADORES TEXT'
        sql.execute(dml)

    }
    def destroy = {
    }
}
