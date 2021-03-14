FROM node:15.11.0-alpine3.10

WORKDIR /usr/src/proj

RUN npm install --global expo-cli

RUN expo init myapp --template blank

WORKDIR /usr/src/proj/myapp

COPY . .

ENTRYPOINT expo start

CMD ["sh"]
