display
createColumnMorphsFor: aCollection
	| columnIndex |
	^ aCollection collect: [ :currentColumn |
		columnIndex := aCollection indexOf: currentColumn.
		SBTableColumnMorph new
			column: columnIndex;
			columnContents: currentColumn;
			header: (self table columnNames at: columnIndex ifAbsent: [ nil ]);
			updateContent;
			colorStatisticValues: self statDictionary;
			yourself ]