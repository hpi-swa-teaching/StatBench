updating
updateContent
	self maxWidth strictlyPositive
		ifTrue: [ self contents: self data wrappedTo: self maxWidth ]
		ifFalse: [ self contentsAsIs: self data ]