FROM ruby:3.0.2

WORKDIR /src
COPY . /src/

RUN bundle install

CMD [ "bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0"]

# If you want to include drafts use:
# CMD [ "bundle", "exec", "jekyll", "serve", "-drafts", "--host", "0.0.0.0"]