math functions
varianceForColumn: aColumn
	| mean sum counter currentValue |
	sum := 0.
	mean := self meanForColumn: aColumn.
	counter := 0.
	self rows do: [ :currentRow |
		currentValue := currentRow at: aColumn.
		currentValue ifNotNil: [
			sum := (currentValue - mean) squared + sum.
			counter := counter + 1 ]].
	^ counter strictlyPositive
		ifTrue: [ sum / counter ]
		ifFalse: [ 0 ]