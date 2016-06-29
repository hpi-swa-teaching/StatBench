# SWT16-Project-10 [![Build Status](https://travis-ci.org/HPI-SWA-Teaching/SWT16-Project-10.svg?branch=master)](https://travis-ci.org/HPI-SWA-Teaching/SWT16-Project-10)

### Requirements
- Squeak 4, 5 or Trunk Image

### How to use it
#### Import Statbench
- clone this GitHub Repository (https://github.com/HPI-SWA-Teaching/SWT16-Project-10)
```
git clone https://github.com/HPI-SWA-Teaching/SWT16-Project-10
```
- import into Squeak: Tools => Monticello Browser => +Repository => filetree://
- choose the cloned repository's folder "packages"
- => ok => click on "Open" and load all Packeges

#### Open a CSV/TSV file
Use the following code to open a SBTable:
```
| yourTable |
yourTable := SBFileParser readCSVFile: '<filename>' header: <boolean>.
```
`<filename>` is a relative (to `Contents/Resources` in the image) or absolute path to your CSV or TSV file.
If you have a TSV file, use `readTSVFile: ...` instead of `readCSVFile: ...`.

#### Display a SBTable
To display the values in a table:
```
SBTableWindow openTable: yourTable.
```
The median (yellow), minimum (green) and maximum (red) are visually highlighted by default

To display values in a diagram, use one of the following (depending on the desired diagram type):
```
SBDiagramWindow openBarDiagramWithTable: table xColumn: <columnNumber> yColumn: <columnNumber>.
SBDiagramWindow openLineDiagramWithTable: table xColumn: <columnNumber> yColumn: <columnNumber>.
```

### Create an aggregatedTable
- execute the following code in your Workspace
```
aggregatedTable := yourTable
	groupByColumns: { <columnNumber1> . <columnNumber2> . <...> }
	andCalculate: {
		table tupleForColumn: <columnNumber> name: '<columnName>' function: <block> .
		<...> }.
SBTableWindow openTable: aggregatedTable.
```

`<block>` can be a predefined block (e.g. `SBStatFunctions sum`) or a self-defined one that accepts an aggregated collection of values and returns a new value. The parameter for groupByColumns of one or more column indices.