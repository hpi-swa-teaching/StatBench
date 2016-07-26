data management
calculateMaxXWidthFor: range
	| maxWidth collection intervalSpace |
	intervalSpace := range / self annotationInterval x.
	maxWidth := 0.
	collection := OrderedCollection new.
	1 to: self annotationInterval x do: [ :index |
		collection add: (self scientificNotationFor: range / self annotationInterval x * index) ].
	collection do: [ :element |
		maxWidth := maxWidth max: (self font widthOfString: element asString) ].
	maxWidth := maxWidth + self annotationPadding.
	^ intervalSpace < maxWidth
		ifTrue: [ (maxWidth / intervalSpace) ceiling ]
		ifFalse: [ 1 ]