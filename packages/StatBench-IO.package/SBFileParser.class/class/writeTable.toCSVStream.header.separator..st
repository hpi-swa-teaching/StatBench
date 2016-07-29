file output
writeTable: aTable toCSVStream: outStream header: hasHeader separator: separator
	hasHeader
		ifTrue: [ self writeCollection: aTable columnNames toStream: outStream separator: separator ].
	aTable rowsDo: [ :currentRow |
		self writeCollection: currentRow toStream: outStream separator: separator ].
	outStream close