baseline
baseline: spec
	<baseline>
	spec
	for: #'common'
	do: [ 
		spec
			package: 'StatBench-Core';
			package: 'StatBench-Tests' with: [ spec requires: #('default') ];
			package: 'StatBench-Data';
			package: 'StatBench-IO';
			package: 'StatBench-UI';
			package: 'StatBench-Diagrams';
			package: 'StatBench-Math'.

		spec
			group: 'default' with: #('StatBench-Core' . 'StatBench-Data');
			group: 'Tests' with: #('StatBench-Tests')]