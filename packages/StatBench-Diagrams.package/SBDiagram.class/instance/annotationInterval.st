accessing
annotationInterval
	^ annotationInterval ifNil: [ annotationInterval := self defaultYAnnotationInterval ]