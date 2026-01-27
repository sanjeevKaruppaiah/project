FROM ubuntu:20.04

WORKDIR /app

COPY *.sh  /app/

RUN chmod +x /app/*.sh

ENTRYPOINT ["/app/entrypoint.sh"]