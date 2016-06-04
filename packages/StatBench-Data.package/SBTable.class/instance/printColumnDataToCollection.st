printing
printColumnDataToCollection
	| counter dataCollection |
	dataCollection := OrderedCollection new.
	self rowLength timesRepeat: [
		dataCollection add: OrderedCollection new ].
	self rows do: [ :currentRow |
		counter := 1.
		currentRow do: [ :element |
			(dataCollection at: counter ifAbsent: [ self error: 'Bad table format' ]) add: element asString.
			counter := counter + 1 ]].
	^ dataCollection