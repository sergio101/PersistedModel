as yet unclassified
testSingleFinder
	self assert: (User Database size) == (userCount).
	User Database inspect.
	self assert: (User findBy: #userId withValue: 123) isNotNil .