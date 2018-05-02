package ejercicio2

import java.awt.Color
import org.uqbar.arena.layout.HorizontalLayout
import org.uqbar.arena.widgets.Button
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.NumericField
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.windows.SimpleWindow
import org.uqbar.arena.windows.WindowOwner

import static extension org.uqbar.arena.xtend.ArenaXtendExtensions.*

class CalculadoraWindow extends SimpleWindow<Calculadora>{
	
	new(WindowOwner owner, Calculadora model) {
		super(owner, model)
		title = "Calculadora"
		taskDescription = "Listo para calcular!!!"
	}
	
	override createFormPanel(Panel mainPanel) {
		this.title = "Calculadora (XTend)"
		this.minHeight = 210
		this.minWidth = 267
		//verticalLayout por defecto
		
		var labelOp1 = new Label(mainPanel).text = "Operando 1"
		labelOp1.alignLeft
		
		new NumericField(mainPanel) => [
			value <=> "operando1"
			width = 185
		]
		
		
		var labelOp2 = new Label(mainPanel).text = "Operando 2"
		labelOp2.alignLeft
		
		new NumericField(mainPanel) => [
			value <=> "operando2"
			width = 185
		]
		
		new Label(mainPanel) => [
			background = Color.ORANGE
			value <=> "resultado"
		]
	}
	
	override protected addActions(Panel actionsPanel){
		new Panel(actionsPanel) => [
			layout = new HorizontalLayout
			
			new Button(it) => [
				caption = "+"
				width = 50
				onClick[| this.sumar()]
			]
			
			new Button(it) => [
				caption = "-"
				width = 50
				onClick[| this.restar()]
			]
			
			new Button(it) => [
				caption = "*"
				width = 50
				onClick[| this.multiplicar()]
			]
			
			new Button(it) => [
				caption = "/"
				width = 50
				onClick[| this.dividir()]
			]
		]
	}
	
	
	/***************
	 * OPERACIONES *
	 ***************/
	 
	
	def sumar() {
		this.modelObject.sumar
	}
	
	def restar() {
		this.modelObject.restar
	}
	
	def multiplicar() {
		this.modelObject.multiplicar
	}
	
	def dividir() {
		this.modelObject.dividir
	}
	
}