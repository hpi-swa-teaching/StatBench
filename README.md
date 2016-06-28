# SWT16-Project-10 [![Build Status](https://travis-ci.org/HPI-SWA-Teaching/SWT16-Project-10.svg?branch=master)](https://travis-ci.org/HPI-SWA-Teaching/SWT16-Project-10)

# Statistics Workbench (StatBench)
Squeak is an interactive environment which allows the direct manipulation of graphical environments. 
This could be leveraged to create an interactive workbench for statistical analysis

### Requirements
- [Squeakimage](https://hpi.de/internalfiles/materialien/FG_SoftwareArchitekturen/SoftwareEngineering1_V/Image/v5/SWT2016.zip)

### How to run

#### import Statbench
- clone GitHub Repository: https://github.com/HPI-SWA-Teaching/SWT16-Project-10
```
git clone https://github.com/HPI-SWA-Teaching/SWT16-Project-10
```
-import Into Squeak: Tools->Monticello Browser->+Repository->filetree://->
[choose the cloned Repository "packages"]->ok->klick on "Open" and load all Packeges

#### import csv/tsv
- you should copy the file into "[...]\SWT2016.app\Contents\Resources\StatBench"
- open Workspace
- import by using SBFileParser readTSVFile
- import example:
```
| [YOURTABLENAME] |
[YOURTABLENAME] := SBFileParser readTSVFile: 'StatBench/[FILENAME].tsv[/.csv]' header: false.
```

#### display Imported Context:
- To display  Values in a Tabel:
- open Workspace
```
SBTableWindow openTable: [YOURTABLENAME].
```
- Median (yellow), Min (green) and Max (red) are color highlighted by default

- To display Values in a Diagram:
- open Workspace
```
SBDiagramWindow openBarDiagramWithTable: table xColumn: [aNumber] yColumn: [aNumber].
```
### Use Statistic Functions
- In SBStatFunctions there are the following functions:
	- sum
	- mean
	- min
	- max
	- 

### How to create an aggregatedTable
- call the following command in your Workspace
```
aggregatedTable := [YOURTABLENAME]
	groupByColumns: { [aNumber] }
	andCalculate: {
		table tupleForColumn: [aNumber] name: 'sum(time)' function: SBStatFunctions sum.
		table tupleForColumn: [aNumber] name: 'mean(time)' function: SBStatFunctions mean.
		table tupleForColumn: [aNumber] name: 'min(time)' function: SBStatFunctions min.
		table tupleForColumn: [aNumber] name: 'max(time)' function: SBStatFunctions max.
		table tupleForColumn: [aNumber] name: 'squareSum(time)' function: [ :collection |
			collection inject: 0 into: [ :subTotal :next |
				next squared + subTotal ]]}.
SBTableWindow openTable: aggregatedTable.
SBDiagramWindow openLineDiagramWithTable: aggregatedTable xColumn: [aNumber] yColumn: [aNumber].
```


