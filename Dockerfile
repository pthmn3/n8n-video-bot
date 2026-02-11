# Use the official n8n image as the base
FROM n8nio/n8n:latest

# Switch to root user to install software
USER root

# Install FFmpeg (required for video editing)
# We use apt-get because the standard n8n image is Debian-based
RUN apt-get update && apt-get install -y ffmpeg

# Switch back to the 'node' user for security (standard n8n practice)
USER node
