tests - testing
testIsInlined
	dom := self
		@
			'<root>
	<empty/>
	<attr value="text"/>
	<el>text</el>
	</root>'.
	self deny: (classification isInlined: (dom / #empty) first)