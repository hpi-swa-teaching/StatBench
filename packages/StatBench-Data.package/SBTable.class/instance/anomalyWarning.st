math functions
anomalyWarning
	"display Warning if max>2*average or min < max-2*average"
	| average |
	average := self average.
	self max > (2 * average) 
		ifTrue: [ Transcript show: 'Max Value is greater than 2 * average Value'; cr ].
	self min < (self max - 2 * average )
		ifTrue: [ Transcript show: 'Max Value is greater than 2 * average Value'; cr ].
	self median < (self average + (self average/2))
		ifTrue: [ Transcript show: 'Median is greater than 1.5 * average Value'; cr  ].
	self median < (self average + (self average/2))
		ifTrue: [ Transcript show: 'Median is less than 0.5 * average Value'; cr  ] 