package Ejercicio1

import org.uqbar.arena.windows.MainWindow
import Ejercicio1.Saludador
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.TextBox
import static extension org.uqbar.arena.xtend.ArenaXtendExtensions.*
import java.awt.Color

class SaludadorWindow extends MainWindow<Saludador>{
	
	new() {
		super(new Saludador)
	}
	
	override createContents(Panel mainPanel) {
		this.title = "Saludador (XTend)"
		
		new Label(mainPanel).text = "Nombre"
		new TextBox(mainPanel) => [
			value <=> "nombre"
		]
		
		
		new Label(mainPanel).text = "Apellido"
		new TextBox(mainPanel) => [
			value <=> "apellido"
		]
		
		new Label(mainPanel) => [
			background = Color.ORANGE
			value <=> "saludo"
		]
	}
	
	def static main(String[] args) {
		new SaludadorWindow().startApplication
	}
	
}
