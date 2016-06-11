math functions
meanForColumn: aColumn
	| sum relevantValues |
	(self containsColumnNumbers: aColumn)
		ifFalse: [ ^ nil ].
	relevantValues := self rowsSelect: [ :currentRow | (currentRow at: aColumn) isNil not ].
	sum := relevantValues detectSum: [ :currentRow | currentRow at: aColumn ].
	^ relevantValues size strictlyPositive
		ifTrue: [ sum / relevantValues size ]
		ifFalse: [ nil ]