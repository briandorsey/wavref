FROM alpine AS build

RUN apk add zola
WORKDIR /workspace
COPY . /workspace

RUN zola build

####
FROM caddy:2.6.2-alpine

COPY --from=build /workspace/Caddyfile /etc/caddy/Caddyfile
COPY --from=build /workspace/public /srv
