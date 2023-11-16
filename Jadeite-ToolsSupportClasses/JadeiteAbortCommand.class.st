"
I execute an abort
"
Class {
	#name : 'JadeiteAbortCommand',
	#superclass : 'JadeiteCommand',
	#category : 'Jadeite-ToolsSupportClasses'
}

{ #category : 'default' }
JadeiteAbortCommand class >> defaultIconName [ 

	^#thumbsDown
]

{ #category : 'default' }
JadeiteAbortCommand class >> defaultName [
	^'Abort'
]

{ #category : 'executing' }
JadeiteAbortCommand >> execute [
	^context abortTransaction
]