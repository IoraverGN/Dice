Class {
	#name : #DieTest,
	#superclass : #TestCase,
	#category : #Dice
}

{ #category : #tests }
DieTest >> testCreationIsOkay [

	| d | 
	d := Die withFaces: 26.
	self assert: d faces equals: 26
]

{ #category : #tests }
DieTest >> testInitializationIsOk [

	| d | 
	d := Die new.
	self assert: d faces equals: 6 
]

{ #category : #tests }
DieTest >> testRolling [

	| d | 
	d := Die new.
	10 timesRepeat: [ self assert: (d roll  between: 1 and: 6 )]
]
