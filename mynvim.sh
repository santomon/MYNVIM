# Create named volume if it doesn't exist
docker volume create my-nvim-data >/dev/null 2>&1

# Run container with named volume for persistent state
docker run -it --rm \
  -v "$(pwd)":/workspace \
  -v my-nvim-data:/root/.local/share/nvim \
  -v my-nvim-data:/root/.local/state/nvim \
  my-nvim "$@"
