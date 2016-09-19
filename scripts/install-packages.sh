#!/bin/bash 

set -ex

./pharo Pharo.image eval "
Metacello new 
	baseline: 'MultiTest';
	repository: 'filetree://.';
	load.
Smalltalk snapshot: true andQuit: true.
"