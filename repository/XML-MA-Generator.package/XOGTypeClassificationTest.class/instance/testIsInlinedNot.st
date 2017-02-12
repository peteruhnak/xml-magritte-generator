tests - testing
testIsInlinedNot
	dom := self
		@
			'<root>
	<not a="a" b="b"/>
	</root>'.
	self deny: (classification isInlined: (dom / #not) first)