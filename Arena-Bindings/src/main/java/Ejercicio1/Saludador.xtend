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
		
		switch this {
			case nombre === null : nombre = ""
			case apellido === null : apellido = ""
		}
		
		"Hola " + nombre + " " + apellido
	}
	
	
	//se actualiza el saludo cada vez que se modifica el nombre o apellido
	def void setNombre(String nombre) {
		this.nombre = nombre
		this.saludo = saludar()
	}
	
	def void setApellido(String apellido) {
		this.apellido = apellido
		this.saludo = saludar()
	}
	
	
}