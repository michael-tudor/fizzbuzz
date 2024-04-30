# Use an official Ruby runtime as a parent image
FROM ruby:3.3.1

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the Gemfile and Gemfile.lock into the container
COPY Gemfile Gemfile.lock ./

# Install any needed packages specified in Gemfile
RUN bundle install

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Command to run when starting the container
CMD ["irb"]
