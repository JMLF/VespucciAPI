Class {
	#name : 'BaselineOfVespucciNotebookElementExtractor',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfVespucciNotebookElementExtractor',
	#package : 'BaselineOfVespucciNotebookElementExtractor'
}

{ #category : 'baselines' }
BaselineOfVespucciNotebookElementExtractor >> baseline: spec [  
    <baseline>
    spec
    for: #common
    do: [ 
        self defineDependencies: spec.
        self definePackages: spec.]
]

{ #category : 'dependencies' }
BaselineOfVespucciNotebookElementExtractor >> defineDependencies: spec [
    spec
        baseline: 'MoosePy'
        with: [ spec
            repository: 'github://moosetechnology/MoosePy:master/src' ].
    spec
        baseline: 'Teapot'
        with: [ spec
            repository: 'github://zeroflag/teapot:master/source' ].

]

{ #category : 'packages' }
BaselineOfVespucciNotebookElementExtractor >> definePackages: spec [

	spec
		package: 'VespucciNotebookElementExtractor'
		with: [ spec requires: #( 'MoosePy' ) ];
		package: 'ColombusAPI';
		package: 'VespucciNotebookElementAPI'
]
