printing
printStringsToSubMorphs
	| contentStrings newline morphCollection headerStrings size textMorph |
	contentStrings := self printColumnDataToStrings.
	newline := Character cr.
	morphCollection := OrderedCollection new.
	headerStrings := OrderedCollection new.
	self columnNames do: [ :currentName |
		headerStrings add: currentName, newline ].
	size := contentStrings size max: headerStrings size.
	size strictlyPositive
		ifTrue: [
			1 to: (self rowLength) do: [ :columnIndex |
				1 to: self rows size do: [ :rowIndex |
			textMorph := SBTableTextMorph new.
				textMorph
					header: (headerStrings at: columnIndex ifAbsent: [ String new ]);
					data: (contentStrings at: columnIndex * rowIndex ifAbsent: [ String new ]).
					 (contentStrings at: columnIndex * rowIndex ifAbsent: [ String new ]) = (self minForColumn: columnIndex)
						ifTrue: [ textMorph color: (Color green) ].
					 (contentStrings at: columnIndex * rowIndex ifAbsent: [ String new ])= (self maxForColumn: columnIndex)
						ifTrue: [ textMorph color: (Color red) ].
					 (contentStrings at: columnIndex * rowIndex ifAbsent: [ String new ]) = (self papeMedianForColumn: columnIndex)
						ifTrue: [ textMorph color: (Color yellow) ].
	
					textMorph updateContent.
				morphCollection add: textMorph ]]].
	^ morphCollection
	
	