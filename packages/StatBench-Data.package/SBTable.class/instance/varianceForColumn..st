math functions
varianceForColumn: aColumn
	| mean relevantValues |
	(self containsColumnNumbers: aColumn)
		ifFalse: [ ^ nil ].
	mean := self meanForColumn: aColumn.
	relevantValues := self columnWithoutNilValuesAt: aColumn.
	^ relevantValues size strictlyPositive
		ifTrue: [
			(relevantValues inject: 0 into: [ :totalSum :next |
				(next - mean) squared + totalSum]) / relevantValues size ]