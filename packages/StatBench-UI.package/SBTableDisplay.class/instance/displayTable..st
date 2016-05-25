as yet unclassified
displayTable: aSBTable
	| morphCollection |
	morphCollection := aSBTable printToTextMorphs.
	self extent: 0@0.
	morphCollection do: [ :currentMorph |
		self addMorph: currentMorph.
		currentMorph position: self position + ((self extent x + 1) @ 0).
		self extent: self extent + (currentMorph extent x @ 0) + self padding.
		currentMorph extent y > self extent y
			ifTrue: [ self extent: (self extent x @ currentMorph extent y) ]]