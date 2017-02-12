as yet unclassified
exampleAttribute
	<magritteDescription>
	'<parent name="pname" />'.
	^ MAStringDescription new
		accessor: #name;
		label: 'Name';
		beXmlAttribute;
		yourself