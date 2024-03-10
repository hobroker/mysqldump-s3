FROM alpine:3.19.1
LABEL maintainer="hobroker"

WORKDIR /app

COPY src/ src/
RUN sh src/setup.sh

ENTRYPOINT ["sh", "src/entrypoint.sh"]
