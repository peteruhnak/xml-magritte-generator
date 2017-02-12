baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				project: 'XMLParser'
					with: [ spec
						className: #ConfigurationOfXMLParser;
						versionString: #stable;
						repository: 'http://smalltalkhub.com/mc/PharoExtras/XMLParser/main/' ];
				package: 'Magritte-XMLBinding'
					with: [ spec repository: 'github://magritte-metamodel/XML-Bindings:master/repository' ].
			spec
				package: 'XML-MA-Generator'
				with: [ spec requires: #(XMLParser 'Magritte-XMLBinding') ] ]