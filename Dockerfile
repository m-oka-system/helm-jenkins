FROM ruby:slim
RUN apt-get update && apt-get install -y \
  build-essential \
  libpq-dev \
  nodejs \
  postgresql-client \
  yarn \
  default-mysql-client \
  dnsutils \
  iputils-ping \
  net-tools \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*
