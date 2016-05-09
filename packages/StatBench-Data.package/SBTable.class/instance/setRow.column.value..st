as yet unclassified
setRow: aRow column: aColumn value: aValue
    | row |
    rows size < aRow ifTrue: [
        (aRow - rows size) timesRepeat: [rows add: OrderedCollection new]].
    row := rows at: aRow.
    row size < aColumn ifTrue: [
        (aColumn - row size) timesRepeat: [row add: 0]].
    row at: aColumn put: aValue