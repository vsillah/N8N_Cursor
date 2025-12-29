FROM node:18-alpine

WORKDIR /app

# Install n8n (using a stable version)
RUN npm install -g n8n@0.235.0

# Set environment variables to disable enterprise features
ENV N8N_EDITION=community
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https

# Expose port
EXPOSE 5678

# Start n8n
CMD ["n8n", "start"]
