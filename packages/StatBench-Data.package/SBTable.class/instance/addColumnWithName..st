table management
addColumnWithName: aString
	self
		rowsDo: [ :currentRow |
			currentRow add: nil ];
		addColumnName: aString;
		addColumnNumberState: true