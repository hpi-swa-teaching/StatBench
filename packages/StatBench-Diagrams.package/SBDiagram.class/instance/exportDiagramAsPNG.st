display
exportDiagramAsPNG
	| time timestamp |
	time := DateAndTime now.
	timestamp := time year asString,
		time month asString,
		time dayOfMonth asString,
		'_', time hour asString,
		'-', time minute asString,
		'-', time second asString.
	self exportDiagramAsPNGNamed: 'diagram_', timestamp