ARG RUBY_VERSION=3.2.2
FROM ruby:${RUBY_VERSION}
WORKDIR /app
ENV BUNDLE_PATH=vendor/bundle
RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y postgresql-client && \
    rm -rf /var/lib/apt/lists /var/cache/apt/archives
