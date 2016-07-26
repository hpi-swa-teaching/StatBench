instance creation
morphCollectionFor: aTable withStats: aDictionary
	| contentCollection columnIndex |
	contentCollection := aTable printColumnDataToCollection.
	^ contentCollection collect: [ :currentColumn |
		columnIndex := contentCollection indexOf: currentColumn.
		self new
			column: columnIndex;
			columnContents: currentColumn;
			header: (aTable columnNames at: columnIndex ifAbsent: [ nil ]);
			updateContent;
			colorStatisticValues: aDictionary;
			yourself ]