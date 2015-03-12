as yet unclassified
tearDown
	| users |
	users := User findBy: #userId withValue: 123.
	users do: [ :u | User Database remove: u ].