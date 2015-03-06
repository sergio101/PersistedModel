as yet unclassified
setUp
	user := User new.
	user userId: 123.
	User add: user.
	User Database inspect.
	userCount := User Database size.