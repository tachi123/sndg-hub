import groovy.sql.Sql
import hub.User
import hub.Role
import hub.UserRoleCentro

class BootStrap {

	def dataSource

	def init = { servletContext ->
        def rolAdmin = Role.findByAuthority('ROLE_ADMIN')
        if (!rolAdmin) {
            rolAdmin = new Role(authority: 'ROLE_ADMIN')
            rolAdmin.save()
        }
		def rolUser = Role.findByAuthority('ROLE_USER')
		if (!rolUser) {
			rolUser = new Role(authority: 'ROLE_USER')
			rolUser.save()
		}
		def rolCentro = Role.findByAuthority('ROLE_CENTRO')
		if (!rolCentro) {
			rolCentro = new Role(authority: 'ROLE_CENTRO')
			rolCentro.save()
		}

        def elAdmin = User.findByUsername('admin')
        if (!elAdmin) {
            elAdmin = new User()
            elAdmin.username = 'admin'
            elAdmin.password = 'Passe01'
            elAdmin.save()
            new UserRoleCentro(user: elAdmin, role: rolAdmin).save()
        }else{
			elAdmin.password = 'Passe01'
            elAdmin.save()
        }
    }
    def destroy = {
    }
}
