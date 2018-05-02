package ejercicio2

import org.uqbar.arena.Application

class CalculadoraEjecutable extends Application{
	
	def static main(String[] args) {
		new CalculadoraEjecutable().start
	}
	
	
	override protected createMainWindow() {
		return new CalculadoraWindow(this, new Calculadora())
	}
	
}