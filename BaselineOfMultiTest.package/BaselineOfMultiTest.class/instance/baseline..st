baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [
			spec
				configuration: 'Seamless'
				with: [ 
					spec
						versionString: '0.9.0';
						repository: 'http://smalltalkhub.com/mc/Pharo/Seamless/main/' ].
			spec
				baseline: 'OSSubprocess'
				with: [ 
					spec
						repository: 'github://marianopeck/OSSubprocess:v0.2.0/repository' ].

			spec
				baseline: 'Malvina'
				with: [ 
					spec
						repository: 'github://guillep/Malvina' ].
			
			spec package: 'MultiTest' with: [ spec requires: #('Seamless' 'OSSubprocess' 'Malvina' ) ] ]