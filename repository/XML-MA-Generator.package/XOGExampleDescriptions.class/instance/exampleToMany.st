as yet unclassified
exampleToMany
	<magritteDescription>
	'<parent>
    <children>
        <child name="first" />
        <child name="second" />
    </children>
</parent>'.
	^ MAToManyRelationDescription new
		accessor: #children;
		label: 'Children';
		classes: {#ClassNameWithoutHash};
		beXmlElement;
		yourself