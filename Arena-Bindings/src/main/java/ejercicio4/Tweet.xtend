package ejercicio4

import org.uqbar.commons.model.annotations.Observable
import org.eclipse.xtend.lib.annotations.Accessors

@Observable
@Accessors

class Tweet {
	String mensaje
	int caracteresLibres = 140
	
	
	def void setMensaje(String s){
		mensaje = s
		twitear
	}
	
	def void twitear(){
		caracteresLibres = 140 - (mensaje.length)
	}
}