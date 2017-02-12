tests - testing
testIsInlined
	dom := self
		@
			'<root>
	<empty/>
	<attr value="text"/>
	<el>text</el>
	</root>'.
	self assert: (classification isInlined: (dom / #empty) first)