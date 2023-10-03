# Install flyte
pip install flytekit
brew install flyteorg/homebrew-tap/flytectl

# Start sandbox env
flytectl demo start

# Explore UI

# Create workflow

# run workflow locally
pyflyte run example.py training_workflow \
    --hyperparameters '{"C": 0.1}'

# run workflow remotely
pyflyte run --remote example.py training_workflow --hyperparameters '{"C": 0.1}'

# Register workflow
flytectl register files \
    --project flytesnacks \
    --domain development \
    --version "$(git rev-parse HEAD)"

# Run workflow in UI