display
buildTableDisplayWithStats: statCollection andColumns: columnCollection
	| statisticValueMorph columnMorph |
	
	1 to: self table rowLength do: [ :index |
		statisticValueMorph := statCollection at: index.
		columnMorph := columnCollection at: index.
		statisticValueMorph
			position: self position + (self width@0);
			width: (statisticValueMorph width max: columnMorph width) + self padding.
		columnMorph
			position: self position + (self width@(statisticValueMorph height + self padding));
			width: (statisticValueMorph width max: columnMorph width) + self padding.
		self
			height: (self height max: (statisticValueMorph height + self padding + columnMorph height));
			width: self width + (statisticValueMorph width max: columnMorph width);
			addMorph: statisticValueMorph;
			addContentMorph: columnMorph ]