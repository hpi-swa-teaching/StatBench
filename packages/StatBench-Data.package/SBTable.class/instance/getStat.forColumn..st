printing
getStat: aString forColumn: aColumn
	| value |
	aString = 'min' ifTrue: [
		value := self minForColumn: aColumn ].
	aString = 'max' ifTrue: [
		value := self maxForColumn: aColumn ].
	aString = 'mean' ifTrue: [
		value := self meanForColumn: aColumn ].
	aString = 'median' ifTrue: [
		value := self medianForColumn: aColumn ].
	aString = 'mean' ifTrue: [
		value := self varianceForColumn: aColumn ].
	aString = 'standardDeviation' ifTrue: [
		value := self standardDeviationColumn: aColumn ].
	
	^ value asString 