file output
writeTable: aTable toCSVStream: outStream header: hasHeader seperator: seperator
	hasHeader
		ifTrue: [ self writeCollection: aTable columnNames toStream: outStream seperator: seperator ].
	aTable rowsDo: [ :currentRow |
		self writeCollection: currentRow toStream: outStream seperator: seperator ].
	outStream close