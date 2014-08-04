Import mojo
Import controls

Const MENU:Int = 0
Const GAME:Int = 1
Const DEATH:Int = 2

Class Game() Extends App

	Field gamestate:Int = MENU

	Method OnCreate
		SetUpdateRate(60)
	End

	Method OnUpdate
		Select
			Case gamestate = MENU
				If KeyHit (KEY_ENTER) Then
					gamestate = GAME
				EndIF

			Case gamestate = GAME

			Case gamestate = DEATH
	End

	Method OnRender
		Select
			Case gamestate = MENU
				DrawText("The Block Game", 320, 100, .5)
				DrawText("Press Enter To Start", 320, 300, .5)
			Case gamestate = GAME

			Case gamestate = DEATH
	End
End Class
