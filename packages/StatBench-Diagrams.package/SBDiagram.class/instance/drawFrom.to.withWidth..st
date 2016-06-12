drawing
drawFrom: startPoint to: endPoint withWidth: aNumber
	| pen |
	pen := Pen newOnForm: self form.
	pen
		defaultNib: aNumber;
		up;
		goto: startPoint;
		down;
		goto: endPoint;
		up