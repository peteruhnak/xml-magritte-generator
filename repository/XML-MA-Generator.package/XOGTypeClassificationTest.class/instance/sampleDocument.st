instance creation
sampleDocument
	^ XMLDOMParser
		parse:
			'<complex>
	<list>
		<item name="item-complex1" />
		<item name="item-complex2" />
	</list>
		<inlinedAttr value="attr" />
		<inlinedElement>el</inlinedElement>
	</complex>'