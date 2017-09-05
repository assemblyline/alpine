FROM alpine:edge

COPY alpine-devel@a10e.org-58886ad0.rsa.pub /etc/apk/keys/
RUN echo "http://pkgs.a10e.org/v3.5/main" >> /etc/apk/repositories && \
  apk add --no-cache --upgrade procps
