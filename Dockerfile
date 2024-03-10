FROM alpine:3.19.1
LABEL maintainer="hobroker"

WORKDIR /app

COPY src/setup.sh src/setup.sh
RUN sh src/setup.sh

COPY src/run.sh src/run.sh
RUN chmod +x src/run.sh

ENTRYPOINT ["sh", "src/run.sh"]
