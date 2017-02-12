s := '<machine id="12">
	<version value="1.2.7" />
	<anyOnline>false</anyOnline>
	<nodes>
		<node id="node-1">
			<isOnline>false</isOnline>
			<address>
				<host>127.0.0.1</host>
				<port>80</port>
			</address>
		</node>
	</nodes>
</machine>'.
dom := XMLDOMParser parse: s.

gen := XOGStructureGenerator new.
gen packageName: 'MachineGenerated'.
gen rootClassName: 'MXObject'.
gen processDocument: dom.

(ChangesBrowser changes: gen rbModel changes changes) open.

obj := XXXMachine new magritteDescription fromXmlNode: dom root.

obj magritteDescription toXmlDocument: obj.

clsText := PUmlClassDiagramGenerator new textForClasses: 'MachineGenerated' asPackage definedClasses.
assocText := '
	XXXMachine --> "nodes *" XXXNode
	XXXNode --> "address 1" XXXAddress
'.
objText := PUmlClassDiagramGenerator new textForRecursiveObject: obj.
text := clsText, assocText, objText.

client := PUmlClient new.
img := client imageFor: text.

dir := (MCFileTreeGitRepository allInstances detect: [:each | each description includesSubstring: 'xml-magritte-generator' ]) directory parent.

(dir / 'machine.plantuml') writeStreamDo: [ :stream | stream nextPutAll: text ].

PNGReadWriter putForm: img onFileNamed: dir / 'machine.png'.