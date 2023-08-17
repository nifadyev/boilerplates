FROM caddy:{$VERSION}-builder-alpine AS builder

RUN xcaddy build --with github.com/caddy-dns/duckdns@{@DUCKDNS_MODULE_VERSION}

FROM caddy:{$VERSION}-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
