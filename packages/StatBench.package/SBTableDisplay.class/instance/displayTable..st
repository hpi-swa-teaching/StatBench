display
displayTable: aSBTable
	| columnMorphs |
	self
		table: aSBTable;
		fillStatDictionary;
		addStatDescriptionMorph.
	columnMorphs := self createColumnMorphsFor: self table printColumnDataToCollection.
	self buildTableDisplayWithStats: self printStatsToTextMorphs columns: columnMorphs