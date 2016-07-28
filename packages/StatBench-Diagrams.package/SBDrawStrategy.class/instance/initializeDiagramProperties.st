initialization
initializeDiagramProperties
	self diagramProperties
		at: #annotationPadding put: 5;
		at: #axisColor put: Color black;
		at: #axisLineWidth put: 4;
		at: #diagramColor put: Color black;
		at: #diagramSize put: 0@500;
		at: #diagramOverdraw put: 100;
		at: #diagramPadding put: 50;
		at: #font put: ((TextStyle named: #BitstreamVeraSansMono) fontOfSize: 12);
		at: #fontColor put: Color black;
		at: #scientificNotationDecimals put: 5;
		at: #annotationInterval put: 10 asPoint;
		at: #maxStringEntryWidth put: 100;
		at: #entryWidth put: 0;
		at: #hasNumericalDomain put: true;
		at: #domain put: OrderedCollection new;
		at: #function put: Dictionary new;
		at: #maxRange put: 1;
		at: #extraCanvasSpace put: 0 asPoint;
		at: #yScaling put: [ self drawArea y / self maxRange ];
		at: #defaultAxisStartPoint put: [ 0@(self diagramSize y - self diagramPadding) ];
		at: #axisStartPoint put: (self defaultAxisStartPoint);
		at: #axisEndPoint put: [ self diagramSize - (self diagramPadding @ self axisStartPoint y) ];
		at: #drawArea put: [ (self axisEndPoint - self axisStartPoint) abs ];
		at: #diagramPosition put: 0 asPoint