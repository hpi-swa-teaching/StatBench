printing
printColumnDataToStrings
	| newline counter stringCollection |
	stringCollection := OrderedCollection new.
	newline := Character cr.
	self rowLength timesRepeat: [
		stringCollection add: String new ].
	self rows do: [ :currentRow |
		counter := 1.
		currentRow do: [ :element |
			stringCollection at: counter put: ((stringCollection at: counter ifAbsent: [ String new ]), element asString, newline).
			counter := counter + 1 ]].
	stringCollection do: [ :currentString |
		currentString size strictlyPositive
			ifTrue: [ stringCollection at: (stringCollection indexOf: currentString) put: currentString allButLast ]].
	^ stringCollection