tests - testing
testIsInlinedEmpty
	dom := self @ '<root><list/></root>'.
	self assert: (classification isInlined: (dom / #list) first)