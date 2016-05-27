as yet unclassified
displayTable: aSBTable
	| morphCollection statsCollection tablebegin |
	morphCollection := aSBTable printToTextMorphs.
	statsCollection := aSBTable printStatsToTextMorph.
	self extent: 0@0.
	statsCollection do: [ :currentMorph |
		self addMorph: currentMorph.
		currentMorph position: self position + ((self extent x + 1) @ 0).
		self extent: self extent + (currentMorph extent x @ 0) + self padding.
		currentMorph extent y > self extent y
			ifTrue: [	self extent: (self extent x @ currentMorph extent y) ]].
			
	tablebegin := 0@(self extent y)+ self paddingY.
	self extent: self extent + self paddingY.
	morphCollection do: [ :currentMorph |
		self addMorph: currentMorph.
		currentMorph position: self position + ((tablebegin x + 1) @ tablebegin y).
		tablebegin := tablebegin + ((currentMorph extent x)@0) + self padding.
		(currentMorph extent y + tablebegin y - self paddingY y) > (self extent y - self paddingY y)
			ifTrue: [ 
		self extent: self extent + (0 @ (currentMorph extent y)). ]]