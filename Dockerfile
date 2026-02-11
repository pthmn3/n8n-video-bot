# Use the official n8n image (Alpine based)
FROM n8nio/n8n:latest

# Switch to root to install software
USER root

# Install FFmpeg (Essential for your video generation)
RUN apk add --no-cache ffmpeg

# Switch back to node user for security
USER node
