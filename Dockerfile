FROM ruby:2.6.4

RUN apt-get update && \
    apt-get install -y git
RUN gem install git-pr-release -v "0.8.0"
COPY ./entrypoint.sh /
RUN chmod +x ./entrypoint.sh

ENTRYPOINT ./entrypoint.sh
