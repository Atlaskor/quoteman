#!/bin/bash

# Start Ollama server in the background
ollama serve &

# Wait a bit for the server to start
sleep 5

# Pull required models
ollama pull whisper
ollama pull mistral

# Wait forever to keep the container running
wait
