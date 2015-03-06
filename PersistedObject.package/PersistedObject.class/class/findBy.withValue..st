as yet unclassified
findBy: aKey withValue: aValue
	^ self Database detect: [ :u | u aKey asMutator == aValue ] ifNone: [ nil ]
