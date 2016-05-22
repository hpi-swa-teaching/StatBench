math functions
meanForColumn: aColumn
	| sum currentValue counter |
	sum := 0.
	counter := 0.
	self rows do: [ :currentRow |
		currentValue := currentRow at: aColumn.
		currentValue ifNotNil: [
			sum := currentValue + sum.
			counter := counter + 1 ]].
	counter strictlyPositive
		ifTrue: [ ^ sum / counter ]
		ifFalse: [ ^ 0 ]