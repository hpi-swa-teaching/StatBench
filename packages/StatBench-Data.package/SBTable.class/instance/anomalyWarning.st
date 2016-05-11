math functions
anomalyWarning
	"display Warning if max>2*average or min < max-2*average"

	| average |

	average:=self getAverage.
	self getMax>2*average 
		ifTrue: [Transcript show: 'Max Value is graeter than 2*average Value'; cr].
	self getMin<(self getMax-2*average )
		ifTrue: [Transcript show: 'Max Value is graeter than 2*average Value'; cr].