deployment
deploy

	WeakRegistry default add: self.
	self ensureLocation.
	self cloneVM.
	self cloneImage.