package ejercicio2

import org.uqbar.commons.model.annotations.Observable
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.model.exceptions.UserException

@Observable
@Accessors

class Calculadora{
	
	int operando1
	int operando2
	
	int resultado
	
	def multiplicar() {
		resultado = operando1 * operando2
	}
	
	def sumar() {
		resultado = operando1 + operando2
	}
	
	def restar() {
		resultado = operando1 - operando2
	}
	
		
	def void dividir() {
		if(operando2 == 0){ throw new UserException("No se puede dividir por 0"); }
		else{
			resultado = operando1 / operando2	
		}
	}
	
}