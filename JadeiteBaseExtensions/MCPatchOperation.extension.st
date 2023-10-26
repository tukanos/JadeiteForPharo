Extension { #name : 'MCPatchOperation' }

{ #category : '*JadeiteBaseExtensions' }
MCPatchOperation >> detailsString [

	self subclassResponsibility 
]

{ #category : '*JadeiteBaseExtensions' }
MCPatchOperation >> typeString [
	"This browser is going away someday. Do ugly string parsing for now to make modifications that are reverted more visible"

	| typeString |
	typeString := self class name copyFrom: 3 to: self class name size.
	self todo:[self reverted ifTrue: [typeString := typeString , ' ' , '(reverted)']].
	^typeString
]