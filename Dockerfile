FROM ruby:3.1

ARG REFRESHED_AT
ENV REFRESHED_AT $REFRESHED_AT

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -\
  && apt-get update -qq && apt-get install -qq --no-install-recommends \
    nodejs \
  && apt-get upgrade -qq \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*\
  && npm install -g yarn@1

RUN apt-get update -qq && apt-get install -qq --no-install-recommends \
redis-server


RUN apt-get install -qq --no-install-recommends \
bash \
curl \
sass \
python2 \
git
# linux-headers


RUN gem install bundler

CMD tail -f /dev/null