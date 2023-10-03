install:
	brew install flyteorg/homebrew-tap/flytectl

package:
	pip install flytekit

demo:
	flytectl demo start

teardown:
	flytectl demo teardown