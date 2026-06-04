FROM node:lts-alpine
WORKDIR /app
COPY slide/package*.json ./
RUN npm install
COPY slide/ .
EXPOSE 3030
CMD ["npx", "slidev", "--remote", "slides.md"]