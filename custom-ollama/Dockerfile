FROM debian:bookworm-slim

# Install dependencies
RUN apt-get update && apt-get install -y     curl     bash     ca-certificates     && rm -rf /var/lib/apt/lists/*

# Download and install Ollama
RUN curl -fsSL https://ollama.com/install.sh | bash

# Add model preload script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Ollama listens on this port
EXPOSE 11434

ENTRYPOINT ["/entrypoint.sh"]
