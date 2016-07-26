column functions
detectFactors
	| factorBooleanCollection |
	factorBooleanCollection := OrderedCollection new.
	1 to: self rowLength do: [ :column |
		factorBooleanCollection add: (self detectFactorsForColumn: column) ].
	^ factorBooleanCollection