as yet unclassified
setUp
	user := User new.
	user userId: 123.
	User Database add: user.
	userCount := User Database size.