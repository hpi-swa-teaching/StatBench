accessing
canvas
	^ canvas ifNil: [ canvas := self defaultCanvas ]