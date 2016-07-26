data management
calculateEntryWidth
	| maxWidth collection |
	maxWidth := 0.
	collection := self hasNumericalDomain
		ifTrue: [
			self domain collect: [ :element |
				self scientificNotationFor: element ]]
		ifFalse: [ self domain ].
	collection do: [ :element |
		maxWidth := maxWidth max: (self font widthOfString: element asString) ].
	maxWidth := maxWidth + self annotationPadding.
	self diagramProperties at: #entryWidth put: 
		(self hasNumericalScaling
			ifTrue: [ maxWidth ]
			ifFalse: [ maxWidth min: self maxStringEntryWidth ])