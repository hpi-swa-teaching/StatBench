display
displayTable: aSBTable
	| morphCollection statMorphs newline sMorph cMorph valueCollection morph columnIndex |
	self
		table: aSBTable;
		fillStatDictionary;
		addStatDescriptionMorph.
	newline := Character cr.
	morphCollection := OrderedCollection new.
	statMorphs := self printStatsToTextMorphs.
	valueCollection := self table printColumnDataToCollection.
	valueCollection do: [ :currentColumn |
		columnIndex := valueCollection indexOf: currentColumn.
		morph := SBTableColumnMorph new.
		morph
			column: columnIndex;
			columnContents: currentColumn;
			header: (self table columnNames at: columnIndex) ;
			updateContent;
			colorStatisticValues: self statDictionary.
		morphCollection add: morph ].

	1 to: self table rowLength do: [ :index |
		sMorph := statMorphs at: index.
		cMorph := morphCollection at: index.
		sMorph
			position: self position + (self width@0);
			width: (sMorph width max: cMorph width) + self padding.
		cMorph
			position: self position + (self width@(sMorph height + self padding));
			width: (sMorph width max: cMorph width) + self padding.
		self
			height: (self height max: (sMorph height + self padding + cMorph height));
			width: self width + (sMorph width max: cMorph width);
			addMorph: sMorph;
			addContentMorph: cMorph ].
	self center: World center