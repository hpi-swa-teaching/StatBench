accessing
annotationInterval
	^ annotationInterval ifNil: [ annotationInterval := self defaultXAnnotationInterval@self defaultYAnnotationInterval ]