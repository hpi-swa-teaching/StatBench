diagram properties
calculateMaxXWidthFor: range
	| maxWidth collection intervalSpace |
	intervalSpace := range / self annotationInterval x.
	maxWidth := 0.
	collection := OrderedCollection new.
	1 to: self annotationInterval x do: [ :index |
		collection add: (self scientificNotationFor: range / self annotationInterval x * index) ].
	collection do: [ :element |
		maxWidth := maxWidth max: (self defaultFont widthOfString: element asString) ].
	maxWidth := maxWidth + self defaultAnnotationPadding.
	^ intervalSpace < maxWidth
		ifTrue: [ (maxWidth / intervalSpace) ceiling ]
		ifFalse: [ 1 ]