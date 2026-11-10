# Builds VirtualBet from app.tar.gz (the full project, packed so it can be
# uploaded to GitHub through the website in one go).
FROM node:22-alpine
WORKDIR /app
COPY app.tar.gz /tmp/app.tar.gz
RUN tar -xzf /tmp/app.tar.gz -C /app --strip-components=1 && rm /tmp/app.tar.gz
RUN npm install --no-audit --no-fund && node build.mjs && npm prune --omit=dev
ENV NODE_ENV=production \
    PORT=3000 \
    DATABASE_PATH=/app/data/virtualbet.db \
    COOKIE_SECURE=true
RUN mkdir -p /app/data
EXPOSE 3000
CMD ["node", "--disable-warning=ExperimentalWarning", "server/index.js"]
