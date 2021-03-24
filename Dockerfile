FROM namshi/smtp:latest
RUN apt-get update && apt-get -y --no-install-recommends install \
netcat
HEALTHCHECK --interval=10s --timeout=10s --start-period=5s --retries=60 CMD nc -v -z localhost 25

