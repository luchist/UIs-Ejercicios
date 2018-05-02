package Ejercicio1

import org.uqbar.commons.model.annotations.Observable
import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
@Observable

class Saludador {
	
	String nombre
	String apellido
	
	String saludo = "Ingrese nombre y apellido"
	
	def String saludar(){
		"Hola " + nombre + " " + apellido
	}
	
	def void setNombre(String nombre) {
		this.nombre = nombre
		this.saludo = saludar()
	}
	
	def void setApellido(String apellido) {
		this.apellido = apellido
		this.saludo = saludar()
	}
	
	
}