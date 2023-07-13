FROM ruby:3.2.1

ENV ROOT="/app"
ENV LANG=C.UTF-8
ENV TZ=Asia/Tokyo

WORKDIR ${ROOT}

COPY Gemfile ${ROOT}
COPY Gemfile.lock ${ROOT}

RUN bundle install

COPY . /app
