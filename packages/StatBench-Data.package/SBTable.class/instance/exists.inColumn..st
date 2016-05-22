table management
exists: aValue inColumn: aColumn
	| value |
	self rows do: [ :currentRow | 
		value := currentRow at: aColumn.
		value = aValue ifTrue: [
			  ^ true ]].
	^ false