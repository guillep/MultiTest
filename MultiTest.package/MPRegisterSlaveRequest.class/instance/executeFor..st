as yet unclassified
executeFor: senderPeer

	| master |
	master := senderPeer network sharedObjectAt: #master.
	master registerSlavePeer: senderPeer atId: id.
	context returnValue: nil to: senderPeer