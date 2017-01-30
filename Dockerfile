FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=2.1.1

RUN gem install build-ubuntu-ami --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["build-ubuntu-ami"]
CMD ["--help"]
