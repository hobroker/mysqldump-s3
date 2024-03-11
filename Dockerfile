FROM alpine:3.19.1
LABEL maintainer="hobroker"

ENV AWS_S3_BUCKET_DIR=""

WORKDIR /app

COPY src/setup.sh src/setup.sh
RUN sh src/setup.sh

COPY src/run.sh src/run.sh
RUN chmod +x src/run.sh

ENTRYPOINT ["sh", "src/run.sh"]
