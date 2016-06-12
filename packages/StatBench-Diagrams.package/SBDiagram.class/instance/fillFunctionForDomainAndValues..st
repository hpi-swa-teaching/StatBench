data management
fillFunctionForDomainAndValues: yValues
	| value |
	self function: Dictionary new.
	1 to: self domain size do: [ :index |
		value := yValues at: index ifAbsent: [ 0 ].
		"value class = ArbitraryPrecisionFloat
			ifTrue: [ value := value asFloat ]."
		self function add: (self domain at: index) -> value ]