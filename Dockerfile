FROM n8nio/n8n:1.50.0

# Wipe any leftover config to prevent user management auto-enabling
RUN rm -rf /home/node/.n8n

# Basic Auth Setup
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=familybot
ENV N8N_BASIC_AUTH_PASSWORD=safebudget2025

# Disable the user setup screen
ENV N8N_USER_MANAGEMENT_DISABLED=true

# Timezone and host setup
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV TZ=Europe/London

EXPOSE 5678

CMD ["n8n"]
