display
printStatsToTextMorphs
	| content morphCollection morph newline value |
	morphCollection := OrderedCollection new.
	newline := Character cr.
	1 to: self table rowLength do: [ :index |
		content := ''.
		self statFunctions do: [ :function |
			value := (self statDictionary at: function) at: index.
			content := value = self table notANumber
				ifTrue: [ content, newline ]
				ifFalse: [ content, value asString, newline ]].
		morph := SBTableTextMorph new.
		morph
			data: content allButLast;
			updateContent.
		morphCollection add: morph ].
	^ morphCollection