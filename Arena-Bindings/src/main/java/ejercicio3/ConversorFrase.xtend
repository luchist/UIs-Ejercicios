package ejercicio3


import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.model.annotations.Observable

@Observable
@Accessors


class ConversorFrase {
	String frase
	String converted
	
	//Cada vez que cambio la frase se hace un reverse nuevo
	def void setFrase(String s){
		this.frase = s
		this.converted = new StringBuilder(s).reverse.toString
	}
	
}