FROM alpine:latest

# Install glib (Alpine's glib is 2.80+, well above 2.39)
# Then install neovim and common dependencies
RUN apk add --no-cache \
    glib \
    glib-dev \
    neovim \
    git \
    wget \
    curl \
    ripgrep \
    fd \
    nodejs \
    npm \
    python3 \
    py3-pip \
    lua5.4 \
    lua5.4-dev \
    luarocks \
    build-base

# Copy your nvim config into the container
COPY . /root/.config/nvim

# Install LazyVim plugins during build
# This runs nvim headlessly and triggers lazy.nvim to install everything
RUN nvim --headless "+Lazy! sync" +qa

# Set the working directory
WORKDIR /workspace

# Default command
CMD ["nvim"]
