FROM alpine:3.8
RUN apk add --update bash jq curl && rm -rf /var/cache/apk/*
COPY atlas-whitelister /usr/bin/atlas-whitelister
CMD atlas-whitelister
