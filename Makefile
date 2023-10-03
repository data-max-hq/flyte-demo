install:
	brew install flyteorg/homebrew-tap/flytectl

package:
	pip install flytekit

demo:
	flytectl demo start

teardown:
	flytectl demo teardown

register-example:
	pyflyte register example.py

register-launchplan:
	pyflyte register launchplan.py \
    	--project flytesnacks \
    	--domain staging \
    	--version v3
