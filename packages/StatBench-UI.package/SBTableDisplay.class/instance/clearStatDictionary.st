display
clearStatDictionary
	self statDictionary keysDo: [ :key |
		self statDictionary at: key put: OrderedCollection new ] 