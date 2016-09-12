as yet unclassified
executeFor: senderPeer

	| master |
	master := context network sharedObjectAt: #master.
	master registerSlave: senderPeer atId: id.
	context returnValue: nil to: senderPeer