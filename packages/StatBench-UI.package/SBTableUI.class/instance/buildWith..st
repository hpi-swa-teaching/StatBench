toolbuilder
buildWith: builder
	| windowSpec inputSpec headerSpec openTableSpec |
	windowSpec := builder pluggableWindowSpec new.
	windowSpec
		model: self;
		label: 'SBTableUI';
		extent: 300@300;
		children: OrderedCollection new.
		
	inputSpec := builder pluggableInputFieldSpec new.
	inputSpec
		model: self;
		frame: (0@0 corner: 0.8@0.08);
		getText: #filePath;
		setText: #filePath:;
		editText: #filePath:;
		indicateUnacceptedChanges: false;
		help: '/path/to/your/file.csv'.
	windowSpec children add: inputSpec.
	
	headerSpec := builder pluggableCheckBoxSpec new.
	headerSpec
		model: self;
		frame: (0.8@0 corner: 1.0@0.08);
		state: #checkBoxState;
		action: #checkBoxAction;
		label: #checkBoxLabel.
	windowSpec children add: headerSpec.
	
	openTableSpec := builder pluggableButtonSpec new.
	openTableSpec
		model: self;
		frame: (0@0.1 corner: 1.0@0.2);
		action: #buttonAction;
		label: #buttonLabel.
	windowSpec children add: openTableSpec.
	
	^ builder build: windowSpec