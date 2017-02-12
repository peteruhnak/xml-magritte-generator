tests - testing
testIsListNot
	dom := self @ '<root><list/></root>'.
	element := (dom / #list) first.
	self deny: (classification isList: element)