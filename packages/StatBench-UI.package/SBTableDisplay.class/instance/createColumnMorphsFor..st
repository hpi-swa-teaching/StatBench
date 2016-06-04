display
createColumnMorphsFor: aCollection
	| morphCollection columnIndex columnMorph |
	morphCollection := OrderedCollection new.
	aCollection do: [ :currentColumn |
		columnIndex := aCollection indexOf: currentColumn.
		columnMorph := SBTableColumnMorph new.
		columnMorph
			column: columnIndex;
			columnContents: currentColumn;
			header: (self table columnNames at: columnIndex);
			updateContent;
			colorStatisticValues: self statDictionary.
		morphCollection add: columnMorph ].
	^ morphCollection