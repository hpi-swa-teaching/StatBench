accessing
functionAt: key
	| value |
	value := self function at: key.
	value class = SBNumber
		ifTrue: [ value := value literalValue ].
	^ value