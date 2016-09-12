initialization
initialize

	super initialize.
	keepSlavesAlive := false.
	slaves := Dictionary new.
	barriers := Dictionary new.