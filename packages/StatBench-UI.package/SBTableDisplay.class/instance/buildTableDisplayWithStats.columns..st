display
buildTableDisplayWithStats: statCollection columns: columnCollection
	| statisticValueMorph columnMorph maxWidth |
	1 to: self table rowLength do: [ :index |
		statisticValueMorph := statCollection at: index.
		columnMorph := columnCollection at: index.
		maxWidth := (statisticValueMorph width max: columnMorph width) + self padding.
		statisticValueMorph
			position: self position + (self width@0);
			width: maxWidth.
		columnMorph
			position: self position + (self width@(statisticValueMorph height + self padding));
			width: maxWidth.
		self
			height: (self height max: (statisticValueMorph height + self padding + columnMorph height));
			width: self width + maxWidth;
			addMorph: statisticValueMorph;
			addContentMorph: columnMorph ]