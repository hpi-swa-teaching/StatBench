math functions
meanForColumn: aColumn
	| sum relevantValues |
	relevantValues := self rows select: [ :currentRow | (currentRow at: aColumn) isNil not ].
	sum := relevantValues detectSum: [ :currentRow | currentRow at: aColumn ].
	^ relevantValues size strictlyPositive
		ifTrue: [ sum / relevantValues size ]
		ifFalse: [ nil ]