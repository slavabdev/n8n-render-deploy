FROM n8nio/n8n:1.50.0

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

# Ensure fresh config (optional but helpful)
RUN rm -rf /home/node/.n8n

EXPOSE 5678

CMD ["tini", "--", "n8n"]
