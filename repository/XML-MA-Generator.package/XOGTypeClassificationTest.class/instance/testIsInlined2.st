tests - testing
testIsInlined2
	dom := self
		@
			'<root>
	<empty/>
	<attr value="text"/>
	<el>text</el>
	</root>'.
	self assert: (classification isInlined: (dom / #attr) first)