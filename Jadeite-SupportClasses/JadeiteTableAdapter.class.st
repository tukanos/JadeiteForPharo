Class {
	#name : 'JadeiteTableAdapter',
	#superclass : 'SpMorphicTableAdapter',
	#category : 'Jadeite-SupportClasses',
	#package : 'Jadeite-SupportClasses'
}

{ #category : 'factory' }
JadeiteTableAdapter >> buildWidget [

	widget := JadeiteTableMorph new  "<<<Jadeite change here"
		selectionConfirmationBlock: [ self presenter canDiscardSelectionEdits ]; "<<<Jadeite change here"
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		intercellSpacing: self class intercellSpacing;
		dragEnabled: self dragEnabled;
		dropEnabled: self dropEnabled;
		yourself.

	self addModelTo: widget.

	^ widget
]
