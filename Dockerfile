FROM node:18-alpine

WORKDIR /app

# Install n8n
RUN npm install -g n8n@1.0.0

# Set environment variables
ENV N8N_EDITION=community
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678

# Expose port
EXPOSE 5678

# Start n8n
CMD ["n8n", "start"]
