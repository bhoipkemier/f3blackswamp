# At a minimum use Ruby 2.5 or later https://jekyllrb.com/docs/
FROM ruby:2.7-alpine3.16

# Add Jekyll dependencies
RUN apk update
RUN apk add --no-cache build-base gcc cmake git 

# Update the Ruby bundler and install Jekyll
RUN gem update bundler && gem install bundler jekyll
