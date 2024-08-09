FROM node:18.20.4

ENV PORT=3000

RUN apt-get update && \
    apt-get install -y curl && \
    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash && \


EXPOSE $PORT

CMD ["node","server.js"]
