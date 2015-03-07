as yet unclassified
findOrCreateBy: aKey withValue: aValue
	| object |
	object := self findBy: aKey withValue: aValue.
	object ifNil: [ object := self new.
		object perform: aKey asMutator with: aValue ].
	^ object