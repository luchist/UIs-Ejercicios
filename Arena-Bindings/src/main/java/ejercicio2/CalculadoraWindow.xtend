package ejercicio2

import org.uqbar.arena.windows.MainWindow
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.NumericField
import static extension org.uqbar.arena.xtend.ArenaXtendExtensions.*
import java.awt.Color
import org.uqbar.arena.widgets.Button
import org.uqbar.arena.layout.HorizontalLayout
import org.uqbar.arena.windows.ErrorsPanel

class CalculadoraWindow extends MainWindow<Calculadora>{
	
	new() {
		super(new Calculadora)
	}
	
	def static main(String[] args) {
		new CalculadoraWindow().startApplication
	}
	
	override createContents(Panel mainPanel) {
		this.title = "Calculadora (XTend)"
		this.minHeight = 210
		this.minWidth = 267
		new ErrorsPanel(mainPanel, "Listo para calcular")
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
		
		AgregarBotones(mainPanel)
		
		new Label(mainPanel) => [
			background = Color.ORANGE
			value <=> "resultado"
		]
	}
	
	def void AgregarBotones(Panel panel){
		new Panel(panel) => [
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