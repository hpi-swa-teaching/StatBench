testing
testAnnotation
| values diagram diagramMorph annotationOnXAxis annotationOnYAxis eEnvironment position |
diagram := SBDiagram new.
annotationOnXAxis := false.
annotationOnYAxis := false.
eEnvironment := diagram  defaultAnnotationPadding - 1.

values := {7 . 1 . 2 . 4.3 . 9.2 . 0 . 11 . 10.587 . 12 . 4}.

diagram diagramType: #bar.
diagram displayXValues: (SBTable indexCollectionFor: values) yValues: values.
diagramMorph := diagram contentMorph imageForm.

1 to: values size do: [ :index |
	eEnvironment * (-1) to: eEnvironment do: [:e | 
		position := diagram axisStartPoint + (diagram entryWidth * index@ diagram defaultAnnotationPadding + e).
		((diagramMorph colorAt: position) = Color transparent) not
			ifTrue: [
				annotationOnXAxis := true].
		position :=  diagram axisStartPoint - ( diagram defaultAnnotationPadding + e@diagram entryWidth * index).
		((diagramMorph colorAt: position) = Color transparent) not
			ifTrue: [
				annotationOnYAxis := true]].
	
	self assert: (annotationOnXAxis) equals: true.
	self assert: (annotationOnYAxis) equals: true].