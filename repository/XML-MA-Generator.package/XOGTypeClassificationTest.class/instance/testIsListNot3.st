tests - testing
testIsListNot3
	dom := self @ '<root><list name="what"><a/><a/></list></root>'.
	element := (dom / #list) first.
	self deny: (classification isList: element)