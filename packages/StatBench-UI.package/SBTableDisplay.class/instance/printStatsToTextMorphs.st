display
printStatsToTextMorphs
	| content morphCollection morph newline value |
	morphCollection := OrderedCollection new.
	newline := Character cr.
	1 to: self table rowLength do: [ :index |
		content := ''.
		self statFunctions do: [ :function |
			value := (self statDictionary at: function) at: index.
			value
				ifNil: [ content := content, newline ]
				ifNotNil: [ content := content, value asString, newline ]].
		morph := SBTableTextMorph new.
		morph
			data: content allButLast;
			updateContent.
		morphCollection add: morph ].
	^ morphCollection