package ejercicio3

import org.uqbar.arena.windows.MainWindow
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.TextBox

import static extension org.uqbar.arena.xtend.ArenaXtendExtensions.*

class ConversorFraseWindow extends MainWindow<ConversorFrase>{
	
	new() {
		super(new ConversorFrase)
	}
	
	override createContents(Panel mainPanel) {
		this.title = "Frase (XTend)"
		
		
		new Label(mainPanel) => [
			text = "Frase"
			width = 185
			alignLeft	
		]
		
		
		new TextBox(mainPanel) => [
			value <=> "frase"
			width = 185
		]
		
		//Conversion
		new Label(mainPanel) => [
			value <=> "converted"
			width = 185
			alignLeft	
		]
	}
	
	def static main(String[] args) {
		new ConversorFraseWindow().startApplication
	}
	
}