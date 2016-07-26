display
exportDiagramAsPNG
	| time timestamp |
	time := DateAndTime now.
	timestamp := time year asString,
		'_', time month asString,
		'_', time dayOfMonth asString,
		'_', time hour asString,
		'-', time minute asString,
		'-', time second asString.
	self exportDiagramAsPNGNamed: 'diagram_', timestamp