FROM alpine:3.7

COPY alpine-devel@a10e.org-58886ad0.rsa.pub /etc/apk/keys/
RUN echo "http://pkgs.a10e.org/v3.7/main" >> /etc/apk/repositories && \
  apk --no-cache upgrade && \
  apk add --no-cache --upgrade procps
