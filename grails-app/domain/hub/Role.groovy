package hub

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString
import grails.gorm.DetachedCriteria

@EqualsAndHashCode(includes='authority')
@ToString(includes='authority', includeNames=true, includePackage=false)
class Role implements Serializable {

	private static final long serialVersionUID = 1

	String authority

	Role(String authority) {
		this()
		this.authority = authority
	}

	static constraints = {
		authority blank: false, unique: true
	}

	static mapping = {
		cache true
	}
	
//	static Role getByNombre(String rol) {
//		criteriaFor(rol).get()
//	}
//
//	private static DetachedCriteria criteriaFor(String rol) {
//		Role.where {
//			authority == rol
//		}
//	}
	
}
