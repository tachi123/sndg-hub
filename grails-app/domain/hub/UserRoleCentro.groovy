package hub

import grails.gorm.DetachedCriteria
import groovy.transform.ToString

import org.apache.commons.lang.builder.HashCodeBuilder

@ToString(cache=true, includeNames=true, includePackage=false)
class UserRoleCentro implements Serializable {

	User user
	Role role
	Centro centro

	UserRoleCentro(User u, Role r) {
		this()
		user = u
		role = r
		centro = null
	}
	
	
	UserRoleCentro(User u, Role r, Centro c) {
		this()
		user = u
		role = r
		centro = c
	}

	@Override
	boolean equals(other) {
		if (!(other instanceof UserRoleCentro)) {
			return false
		}

		other.user?.id == user?.id && other.role?.id == role?.id && other.centro?.id == centro?.id
	}

	@Override
	int hashCode() {
		def builder = new HashCodeBuilder()
		if (user) builder.append(user.id)
		if (role) builder.append(role.id)
		if (centro) builder.append(centro.id)
		builder.toHashCode()
	}

	static UserRoleCentro get(long userId, long roleId, long centroId) {
		criteriaFor(userId, roleId, centroId).get()
	}
	
	static UserRoleCentro get(long userId, String role, long centroId) {
		criteriaFor(userId, role, centroId).get()
	}

	static boolean exists(long userId, long roleId, long centroId) {
		criteriaFor(userId, roleId, centroId).count()
	}
		
	private static DetachedCriteria criteriaFor(long userId, String rol, long centroId) {
		UserRoleCentro.where {
			user == User.load(userId) &&
			role == Role.get(rol) &&
			centro == Centro.load(centroId)
		}
	}
	
	private static DetachedCriteria criteriaFor(long userId, long roleId, long centroId) {
		UserRoleCentro.where {
			user == User.load(userId) &&
			role == Role.load(roleId) &&
			centro == Centro.load(centroId)
		}
	}

	static UserRoleCentro create(User user, Role role, Centro centro, boolean flush = false) {
		def instance = new UserRoleCentro(user: user, role: role, centro: centro)
		instance.save(flush: flush, insert: true)
		instance
	}

	static boolean remove(User u, Role r, Centro c, boolean flush = false) {
		if (u == null || r == null) return false

		int rowCount = UserRoleCentro.where { user == u && role == r && centro == c}.deleteAll()

		if (flush) { UserRoleCentro.withSession { it.flush() } }

		rowCount
	}

	static void removeAll(User u, boolean flush = false) {
		if (u == null) return

		UserRoleCentro.where { user == u }.deleteAll()

		if (flush) { UserRoleCentro.withSession { it.flush() } }
	}

	static void removeAll(Role r, boolean flush = false) {
		if (r == null) return

		UserRoleCentro.where { role == r }.deleteAll()

		if (flush) { UserRoleCentro.withSession { it.flush() } }
	}

	static constraints = {
		role validator: { Role r, UserRoleCentro ur ->
			if (ur.user == null || ur.user.id == null) return
			if (ur.centro == null || ur.centro.id == null) return
			boolean existing = false
			UserRoleCentro.withNewSession {
				existing = UserRoleCentro.exists(ur.user.id, r.id, ur.centro.id)
			}
			if (existing) {
				return 'userRoleCentro.exists'
			}
		}
		centro nullable:true
	}

	static mapping = {
		id composite: ['user', 'role', 'centro']
		version false
	}
	
}
