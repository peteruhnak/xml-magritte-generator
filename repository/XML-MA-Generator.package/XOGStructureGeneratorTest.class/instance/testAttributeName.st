tests
testAttributeName
	self assert: (generator attributeNameFor: 'name') equals: 'name'.
	self assert: (generator attributeNameFor: 'na:me') equals: 'na_me'