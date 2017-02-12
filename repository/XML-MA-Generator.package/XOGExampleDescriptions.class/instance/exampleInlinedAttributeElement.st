as yet unclassified
exampleInlinedAttributeElement
	<magritteDescription>
	'<parent>
    <inlinedAttribute value="false" />
</parent>'.
	^ MABooleanDescription new
		accessor: #inlinedAttribute;
		label: 'Inlined Attribute';
		beXmlChildAttribute;
		xmlAttributeName: #value;
		yourself