as yet unclassified
findBy: aKey withValue: aValue
	^ self Database detect: [ :u | (u perform: (aKey)) == aValue ] ifNone: [ nil ]
