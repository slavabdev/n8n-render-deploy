FROM n8nio/n8n:1.50.0

RUN rm -rf /home/node/.n8n

ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=familybot
ENV N8N_BASIC_AUTH_PASSWORD=safebudget2025
ENV N8N_USER_MANAGEMENT_DISABLED=true
ENV TZ=Europe/London
ENV PORT=5678

EXPOSE 5678
