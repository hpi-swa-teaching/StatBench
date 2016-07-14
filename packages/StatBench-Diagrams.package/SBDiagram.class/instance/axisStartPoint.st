accessing
axisStartPoint
	^ axisStartPoint ifNil: [ axisStartPoint := self defaultAxisStartPoint ]