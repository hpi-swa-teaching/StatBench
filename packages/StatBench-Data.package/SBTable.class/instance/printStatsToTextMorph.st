printing
printStatsToTextMorph
	| newline morphCollection contentStrings headerStrings textMorph size |
	newline := Character cr.
	contentStrings := OrderedCollection new.
	morphCollection := OrderedCollection new.
	headerStrings := OrderedCollection new.
	size := (self rows at: 1) size.
	size strictlyPositive
		ifTrue: [
			1 to: size do: [ :index |
				contentStrings := (self printStatsToString).
				textMorph := SBTableTextMorph new.
				textMorph
					data: ( contentStrings at: index ifAbsent: [ String new ]);
					updateContent.
				morphCollection add: textMorph ]].
	^ morphCollection