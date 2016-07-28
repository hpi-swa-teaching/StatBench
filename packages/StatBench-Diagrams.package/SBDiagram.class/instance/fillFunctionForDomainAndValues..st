data management
fillFunctionForDomainAndValues: yValues
	| value |
	self function: Dictionary new.
	1 to: self domain size do: [ :index |
		value := self domain at: index.
		(self function at: (self domain at: index) ifAbsentPut: [ OrderedCollection new ])
			add: (yValues at: index ifAbsent: [ 0 ]) ]