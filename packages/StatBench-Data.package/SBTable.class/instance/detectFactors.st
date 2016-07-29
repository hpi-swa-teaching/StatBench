column functions
detectFactors
	| factorBooleans |
	factorBooleans := OrderedCollection new.
	1 to: self rowLength do: [ :column |
		factorBooleans add: (self detectFactorsForColumn: column) ].
	^ factorBooleans