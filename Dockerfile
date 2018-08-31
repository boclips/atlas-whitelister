FROM alpine:3.8
RUN apk add --update bash jq curl && rm -rf /var/cache/apk/*
COPY atlas-whitelister /usr/local/bin/atlas-whitelister
ADD https://storage.googleapis.com/kubernetes-release/release/v1.11.2/bin/linux/amd64/kubectl /usr/local/bin/kubectl
RUN chmod +x /usr/local/bin/kubectl
CMD atlas-whitelister
