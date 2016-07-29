data management
fillFunctionForDomainAndValues: yValues
	self function: Dictionary new.
	1 to: self domain size do: [ :index |
		(self function at: (self domain at: index) ifAbsentPut: [ OrderedCollection new ])
			add: (yValues at: index ifAbsent: [ 0 ]) ]