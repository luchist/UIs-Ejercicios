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
		this.minHeight = 210
		this.minWidth = 267
		//verticalLayout por defecto
		
		var labelNombre = new Label(mainPanel).text = "Nombre"
		labelNombre.alignLeft
		
		new TextBox(mainPanel) => [
			width = 185
			value <=> "nombre"
		]
		
		
		var labelApellido = new Label(mainPanel).text = "Apellido"
		labelApellido.alignLeft
		
		new TextBox(mainPanel) => [
			width = 185
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
