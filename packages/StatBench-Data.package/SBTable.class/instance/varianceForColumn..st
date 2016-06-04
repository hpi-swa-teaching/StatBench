math functions
varianceForColumn: aColumn
	| mean counter sum currentValue |
	(self containsColumnNumbers: aColumn)
		ifFalse: [ ^ nil ].
	sum := 0.
	counter := 0.
	mean := self meanForColumn: aColumn.
	self rows do: [ :currentRow |
		currentValue := currentRow at: aColumn.
		currentValue ifNotNil: [
			sum := (currentValue - mean) squared + sum.
			counter := counter + 1 ]].
	^ counter strictlyPositive
		ifTrue: [ sum / counter ]
		ifFalse: [ 0 ]