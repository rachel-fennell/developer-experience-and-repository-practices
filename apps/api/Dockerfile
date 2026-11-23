FROM node:26-alpine
WORKDIR /app

COPY --chown=node:node package.json ./
COPY --chown=node:node package-lock.json ./
COPY --chown=node:node apps/api/package.json ./apps/api/package.json
COPY --chown=node:node packages/booking-rules/package.json ./packages/booking-rules/package.json

RUN npm ci
COPY --chown=node:node apps ./apps
COPY --chown=node:node packages ./packages
USER node
CMD ["npm", "run", "dev", "--prefix", "apps/api"]