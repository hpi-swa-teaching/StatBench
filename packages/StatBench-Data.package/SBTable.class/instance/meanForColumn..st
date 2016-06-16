math functions
meanForColumn: aColumn
	| relevantValues |
	(self containsColumnNumbers: aColumn)
		ifFalse: [ ^ nil ].
	relevantValues := self columnWithoutNilValuesAt: aColumn.
	^ relevantValues size strictlyPositive
		ifTrue: [
			(relevantValues inject: 0 into: [ :subTotal :next |
				next + subTotal ]) / relevantValues size ]