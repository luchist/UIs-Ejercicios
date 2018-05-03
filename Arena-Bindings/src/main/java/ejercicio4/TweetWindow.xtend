package ejercicio4

import org.uqbar.arena.windows.MainWindow
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.TextBox

import static extension org.uqbar.arena.xtend.ArenaXtendExtensions.*


class TweetWindow extends MainWindow<Tweet>{
	
	new() {
		super(new Tweet)
	}
	
	
	
	override createContents(Panel mainPanel) {
		
		new Label(mainPanel) => [
			text = "Tweet"
			alignLeft
		]
		
		//Tweet body
		new TextBox(mainPanel) => [
			value <=> "mensaje"
			width = 180
			height = 60
		]
		
		//Counter
		new Label(mainPanel) => [
			value <=> "counter"
			alignRight
		]
		
	}
	
	
	
	def static main(String[] args) {
		new TweetWindow().startApplication
	}
	
}