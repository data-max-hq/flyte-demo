install:
	brew install flyteorg/homebrew-tap/flytectl

package:
	pip install flytekit

sandbox:
	flytectl sandbox start

teardown:
	flytectl sandbox teardown