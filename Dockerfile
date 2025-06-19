FROM n8nio/n8n:1.50.0

# Wipe any existing config to prevent owner setup caching
RUN rm -rf /home/node/.n8n

# Enable basic auth
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=familybot
ENV N8N_BASIC_AUTH_PASSWORD=safebudget2025

# Disable owner account creation
ENV N8N_USER_MANAGEMENT_DISABLED=true

# Default settings
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV TZ=Europe/London

EXPOSE 5678

# Use proper startup command from n8n v1.x
CMD ["n8n", "start", "--tunnel"]
