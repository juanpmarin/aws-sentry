FROM infrastructureascode/aws-cli:1.16.216

LABEL maintainer="Juan Marín"

ENV SENTRY_CLI_LATEST_VERSION="1.47.1"

# Get Sentry CLI
RUN curl -L -sS https://downloads.sentry-cdn.com/sentry-cli/${SENTRY_CLI_LATEST_VERSION}/sentry-cli-Linux-x86_64 -o /usr/local/bin/sentry-cli \
 && chmod +x /usr/local/bin/sentry-cli

WORKDIR /root
