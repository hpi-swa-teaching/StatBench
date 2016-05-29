display
printStatsToTextMorphs
	| content morphCollection morph newline |
	morphCollection := OrderedCollection new.
	newline := Character cr.
	1 to: self table rowLength do: [ :index |
		content := ''.
		self statFunctions do: [ :function | 
			content := content, ((self statDictionary at: function) at: index) asString, newline ].
		morph := SBTableTextMorph new.
		morph
			data: content allButLast;
			updateContent.
		morphCollection add: morph ].
	^ morphCollection