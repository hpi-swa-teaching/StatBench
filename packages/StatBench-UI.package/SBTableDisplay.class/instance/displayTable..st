display
displayTable: aSBTable
	| columnMorphs |
	self
		table: aSBTable;
		fillStatDictionary;
		addStatDescriptionMorph.
	columnMorphs := SBTableColumnMorph morphCollectionFor: self table withStats: self statDictionary. 
	self buildTableDisplayWithStats: self printStatsToTextMorphs columns: columnMorphs