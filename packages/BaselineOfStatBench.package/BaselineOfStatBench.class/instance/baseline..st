baseline
baseline: spec
    <baseline>
    spec
        for: #'common'
        do: [ 
            spec
                package: 'StatBench-Core';
                package: 'StatBench-Tests' with: [ spec requires: #('default') ].
            spec
                group: 'default' with: #('StatBench-Core');
                group: 'Tests' with: #('StatBench-Tests') ]