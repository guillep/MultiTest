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
				configuration: 'BeaconCore'
				with: [ 
					spec
						versionString: #'development';
						repository: 'http://smalltalkhub.com/mc/Pharo/Beacon/main/' ].
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
			
			spec
				baseline: 'TaskIt'
				with: [ 
					spec
						repository: 'github://sbragagnolo/Taskit:dev-0.3';
						loads: 'TaskItRetry' ].
			
			spec package: 'MultiTest' with: [ spec requires: #('Seamless' 'OSSubprocess' 'Malvina' 'BeaconCore' 'TaskIt' ) ] ]