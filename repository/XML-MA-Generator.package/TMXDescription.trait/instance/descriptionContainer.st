accessing-description
descriptionContainer
	<magritteContainer>
	^ super descriptionContainer
		xmlElementName: self class xmlElementName;
		yourself