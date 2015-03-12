as yet unclassified
testPersistence
	
	self user: User new.
	self track: Track new.
	self assert: (Track Database includes: self user) not.
	self assert: (User Database includes: self track) not.
	Track Database add: self track.
	User Database add: self user.
	self assert: (Track Database includes: track).
	self assert: (User Database includes: user).
	self assert: (Track Database includes: user) not.
	self assert: (User Database includes: track) not.
	Track Database remove: self track.
	User Database remove: self user.