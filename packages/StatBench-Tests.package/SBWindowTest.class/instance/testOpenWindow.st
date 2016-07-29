testing
testOpenWindow
	self window: SBWindow new.
	self deny: (World submorphs includes: self window window).
	self window openWindow.
	self assert: (World submorphs includes: self window window).
	World removeMorph: self window window.
	self deny: (World submorphs includes: self window window)