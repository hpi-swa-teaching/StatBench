printing
printColumnDataToCollection
	| dataCollection |
	dataCollection := OrderedCollection new.
	1 to: self rowLength do: [ :index |
		dataCollection add: ((self columnAt: index) collect: [ :element |
			element notNil
				ifTrue: [ element asString ]
				ifFalse: [ ' ' ]]) ].
	^ dataCollection