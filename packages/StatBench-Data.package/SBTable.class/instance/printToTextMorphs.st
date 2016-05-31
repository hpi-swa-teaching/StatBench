printing
printToTextMorphs
	| newline morphCollection rowMorphCollection submorphCollection headerStrings textMorph size |
	newline := Character cr.
	submorphCollection := self printStringsToSubMorphs.
	morphCollection := OrderedCollection new.
	headerStrings := OrderedCollection new.
	self columnNames do: [ :currentName |
		headerStrings add: currentName, newline ].
	size := submorphCollection size max: headerStrings size.
	size strictlyPositive
		ifTrue: [
			1 to: self rowLength do: [ :columnIndex |
				rowMorphCollection := OrderedCollection new.
				1 to:  self rows size do: [ :rowIndex |
			textMorph := SBTableTextMorph new.
				textMorph := submorphCollection at: columnIndex*rowIndex.
				rowMorphCollection add: textMorph ].
			morphCollection add: rowMorphCollection ]].
	^ morphCollection