as yet unclassified
exampleInlinedElement
	<magritteDescription>
	'<parent>
    <inlinedElement>true</inlinedElement>
</parent>'.
	^ MABooleanDescription new
		accessor: #inlinedElement;
		label: 'Inlined Element';
		beXmlInlineElement;
		yourself