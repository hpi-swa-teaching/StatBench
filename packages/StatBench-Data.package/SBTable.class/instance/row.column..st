accessing rows/columns
row: aRow column: aColumn
    aRow <= rows size ifTrue: [
        |row|
        row := rows at: aRow.
        aColumn <= rows size ifTrue: [^ row at: aColumn]].