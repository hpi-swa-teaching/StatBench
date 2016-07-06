testing
testColorStatValues
	| aTableDisplay aTable |
	aTable := SBTable new.
	aTable
		addRows: 4 size: 1;
		row: 1 column: 1 value: (SBNumber newFromNumber: 3);
		row: 2 column: 1 value: (SBNumber newFromNumber: 5);
		row: 3 column: 1 value: (SBNumber newFromNumber: 7.332);
		row: 4 column: 1 value: (SBNumber newFromNumber: 14.1);
		addRowIfAbsent: 1.
	aTableDisplay := SBTableDisplay new.
	self tableColumn 
		column: 1;
		columnContents: {'7' . '1' . '2' . '4.3' . '9.2' . '0' . '11' . '10.587' . '12' . '4'} asOrderedCollection;
		header: nil.
	aTableDisplay
		table: aTable;
		fillStatDictionary.
	"self tableColumn 
		updateContent;
		colorStatisticValues: (aTableDisplay statDictionary).
	self halt."
	




" a Dictionary(#detectFactors->an OrderedCollection(false) #max->an OrderedCollection(a SBNumber) #mean->an OrderedCollection(a SBNumber) #min->an OrderedCollection(a SBNumber) #papeMedian->an OrderedCollection(a SBNumber) #standardDeviation->an OrderedCollection(a SBNumber) #variance->an OrderedCollection(a SBNumber) )"