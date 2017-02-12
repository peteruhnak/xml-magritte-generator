tests - testing
testIsList
	dom := self @ '<root><list><c/><c/></list></root>'.
	element := (dom / #list) first.
	self assert: (classification isList: element)