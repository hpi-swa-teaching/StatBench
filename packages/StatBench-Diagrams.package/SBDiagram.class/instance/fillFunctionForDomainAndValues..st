data management
fillFunctionForDomainAndValues: yValues
	self function: Dictionary new.
	1 to: self domain size do: [ :index |
		self function add: (self domain at: index) -> (yValues at: index ifAbsent: [ 0 ]) ]