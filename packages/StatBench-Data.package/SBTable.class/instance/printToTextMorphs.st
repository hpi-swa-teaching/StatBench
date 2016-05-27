printing
printToTextMorphs
	| newline morphCollection contentStrings headerStrings textMorph size |
	newline := Character cr.
	contentStrings := self printColumnDataToStrings.
	morphCollection := OrderedCollection new.
	headerStrings := OrderedCollection new.
	self columnNames do: [ :currentName |
		headerStrings add: currentName, newline ].
	size := contentStrings size max: headerStrings size.
	size strictlyPositive
		ifTrue: [
			1 to: (self rowLength) do: [ :index |
			textMorph := SBTableTextMorph new.
				textMorph
					header: (headerStrings at: index ifAbsent: [ String new ]);
					data: (contentStrings at: index ifAbsent: [ String new ]);
					updateContent.
				morphCollection add: textMorph ]].
	^ morphCollection