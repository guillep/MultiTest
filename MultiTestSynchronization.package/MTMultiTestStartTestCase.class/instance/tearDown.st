running
tearDown

	master ifNotNil: [
		master stop.
		master slaves do: #kill ].