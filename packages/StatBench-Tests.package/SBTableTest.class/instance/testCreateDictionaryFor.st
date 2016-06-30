testing
testCreateDictionaryFor
	| dictionary groupValue1 groupValue2 |
	self table: SBTable new.
	groupValue1 := SBNumber newFromNumber: 3.
	groupValue2 := SBNumber newFromNumber: 1.
	self table
		addRows: 3 size: 2;
		row: 1 column: 1 value: groupValue1;
		row: 1 column: 2 value: 5 raw: false;
		row: 2 column: 1 value: groupValue1;
		row: 2 column: 2 value: 6 raw: false;
		row: 3 column: 1 value: groupValue2;
		row: 3 column: 2 value: 2 raw: false.
	dictionary := self table createDictionaryFor: { 1 }.
	self
		assert: ((dictionary at: { groupValue1 } asOrderedCollection) includes: 1);
		assert: ((dictionary at: { groupValue1 } asOrderedCollection) includes: 2);
		assert: ((dictionary at: { groupValue2 } asOrderedCollection) includes: 3)
		