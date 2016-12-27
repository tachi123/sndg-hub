package mincyt

import java.util.Collection;

import grails.converters.JSON

import org.springframework.ldap.core.DirContextAdapter
import org.springframework.ldap.core.DirContextOperations
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority
import org.springframework.security.core.userdetails.UserDetails
import org.springframework.security.ldap.userdetails.UserDetailsContextMapper

class MincytDetailsContextMapper implements UserDetailsContextMapper {
	
	   UserDetails mapUserFromContext(DirContextOperations ctx, String username,
									  Collection authorities) {
	
		
//		  String fullname = ctx.originalAttrs.attrs['name'].values[0]
//		  String email = ctx.originalAttrs.attrs['mail'].values[0].toString().toLowerCase()
//		  def title = '' //ctx?.originalAttrs?.attrs?['title'] : ''
          
		  def fullname = ctx.attributes.get('cn').get()
		  def title = ''
		  def email = ctx.attributes.get('mail').get()									   

		  //println 
//		  ctx.attributes.all.each { println it }

		  authorities = [new SimpleGrantedAuthority('ROLE_USER')]
		  
		  new MincytUserDetails(username, username, true, true, true, true,
							authorities, fullname, email, title )
	   }
	
	   void mapUserToContext(UserDetails user, DirContextAdapter ctx) {
		  throw new IllegalStateException("Only retrieving data from AD is currently supported")
	   }
	
	
}

