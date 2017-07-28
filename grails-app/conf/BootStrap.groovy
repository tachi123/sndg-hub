import groovy.sql.Sql
import hub.User
import hub.Role
import hub.UserRole

class BootStrap {

	def dataSource

	def init = { servletContext ->
        def rolAdmin = Role.findByAuthority('ROLE_ADMIN')
        if (!rolAdmin) {
            rolAdmin = new Role(authority: 'ROLE_ADMIN')
            rolAdmin.save()
        }

        def elAdmin = User.findByUsername('admin')
        if (!elAdmin) {
            elAdmin = new User()
            elAdmin.username = 'admin'
            elAdmin.password = '123'
            elAdmin.save()
            new UserRole(user: elAdmin, role: rolAdmin).save()
        }
    }
    def destroy = {
    }
}
