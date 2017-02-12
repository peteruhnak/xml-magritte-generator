tests - testing
testIsInlinedEmpty
	dom := self @ '<root><list/></root>'.
	self deny: (classification isInlined: (dom / #list) first)