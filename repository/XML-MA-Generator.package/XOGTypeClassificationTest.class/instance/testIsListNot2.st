tests - testing
testIsListNot2
	dom := self @ '<root><list><a/><b/></list></root>'.
	element := (dom / #list) first.
	self deny: (classification isList: element)