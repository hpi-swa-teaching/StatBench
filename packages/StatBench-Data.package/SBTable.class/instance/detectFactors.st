factor detection
detectFactors
	| columnsAreFactors |
	columnsAreFactors := OrderedCollection new.
	1 to: self rowLength do: [ :column |
		columnsAreFactors add: (self detectFactorsForColumn: column) ].
	^ columnsAreFactors