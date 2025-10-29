FROM node:20-alpine

WORKDIR /server

# Build frontend
ARG RAILWAY_PUBLIC_DOMAIN
ENV RAILWAY_PUBLIC_DOMAIN=$RAILWAY_PUBLIC_DOMAIN
RUN echo "$RAILWAY_PUBLIC_DOMAIN" > railway_public_domain.txt

COPY package.json package-lock.json .
RUN npm install

CMD ["npm", "run", "run"]
