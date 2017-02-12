tests - testing
testIsInlined3
	dom := self
		@
			'<root>
	<empty/>
	<attr value="text"/>
	<el>text</el>
	</root>'.
	self assert: (classification isInlined: (dom / #el) first)