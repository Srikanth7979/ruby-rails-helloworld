# Use an official Ruby runtime as the base image
FROM ruby:2.3

# Set the working directory in the container
WORKDIR /app

# Copy Gemfile and Gemfile.lock from your project directory to the container
COPY Gemfile Gemfile.lock ./

# Install bundler
RUN gem install bundler:2.2.30

# Install dependencies using Bundler
RUN bundle install

# Copy the rest of your application's code to the container
COPY . .

# Specify the command to run your application
CMD ["ruby", "app.rb"]
EXPOSE 3000
