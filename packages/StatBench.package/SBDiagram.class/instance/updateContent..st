display
updateContent: aForm
	self contentMorph notNil
		ifTrue: [ self removeMorph: self contentMorph ].
	self
		contentMorph: aForm asMorph;
		addMorph: self contentMorph.
	self contentMorph
		position: self position;
		lock