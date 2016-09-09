events
announceFinished: aSlaveId

	(self barrierAt: aSlaveId) signal.
	"(slaves at: aSlaveId) signalBarrier: #_youCanDie_now"