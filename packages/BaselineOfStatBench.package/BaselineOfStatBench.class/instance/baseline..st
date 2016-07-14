baseline
baseline: spec
	<baseline>
	spec
	for: #'common'
	do: [ 
		spec
			package: 'StatBench' with: [ spec requires: #('full') ];
"			package: 'StatBench-Core';
			package: 'StatBench-Tests' with: [ spec requires: #('full') ];
			package: 'StatBench-Data';
			package: 'StatBench-Diagrams';
			package: 'StatBench-IO';
			package: 'StatBench-UI';
			package: 'StatBench-Math';
"			package: 'ArbitraryPrecisionFloat';
			package: 'ArbitraryPrecisionFloatTests' with: [ spec requires: #('float') ]. 

		spec
			group: 'default' with: #('StatBench');
"			group: 'statbench' with: #('StatBench');
			group: 'Tests' with: #('StatBench-Tests');
			group: 'data' with: #('StatBench-Data');
			group: 'diagrams' with: #('StatBench-Diagrams');
			group: 'io' with: #('StatBench-IO');
			group: 'ui' with: #('StatBench-UI');
			group: 'math' with: #('StatBench-Math');
"			group: 'float' with: #('ArbitraryPrecisionFloat');
			group: 'full' with: #('default' 'float')]