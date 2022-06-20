Wbstartup
WBtoSCREEN 0

Window 0,40,40,280,50,$0008,"Greetings",0,1
	WLocate0,0
		NPrint"Hello World!"
		
	Repeat
	Until Event=512
CloseWindow 0
End
