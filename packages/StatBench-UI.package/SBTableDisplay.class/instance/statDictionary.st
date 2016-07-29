accessing
statDictionary
	^ statDictionary ifNil: [ statDictionary := self defaultStatDictionary ]