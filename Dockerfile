FROM docker:dind

COPY docker.aai.com.crt  /certs/
RUN cat /certs/docker.aai.com.crt >> /etc/ssl/certs/ca-certificates.crt
RUN apk update && apk add openssh

CMD ["--insecure-registry", "docker.aai.com"]
