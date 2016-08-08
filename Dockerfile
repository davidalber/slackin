FROM node:6.3.0-slim

ADD . /srv/www
WORKDIR /srv/www

RUN npm install --unsafe-perm

ENV PORT 3000

EXPOSE $PORT

CMD ./bin/slackin --coc "$SLACK_COC" --port $PORT $SLACK_SUBDOMAIN $SLACK_API_TOKEN
