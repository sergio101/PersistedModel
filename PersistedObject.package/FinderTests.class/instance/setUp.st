as yet unclassified
setUp
	self user: User new.
	self user userId: 123.
	User Database add: self user.
	userCount := User Database size.