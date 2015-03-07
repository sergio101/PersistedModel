as yet unclassified
testSingleFinder
	|user2|
	self assert: (User Database size) == (userCount).
	self assert: (User findBy: #userId withValue: 123) isNotNil.
	User Database remove: user.
	self assert: (User findBy: #userId withValue: 123) isNil.
	
	self assert: (User findBy: #userId withValue: 456) isNil.
	user2 := User findOrCreateBy: #userId withValue: 456.
	self assert: (user2 isNotNil).
	User Database add:user2.
	self assert: (User Database includes: user2).
	User Database remove: user2.
	self assert: (User Database includes: user2) == false. 