---
layout: post
title: "Creating a Docker Ruby test runner"
date: 2023-01-23 10:30:00 +0100
categories: jekyll update
---

# Assumptions
Some Docker knowledge. But will add links and glossary.

# The problem
- Application built using `docker-compose`.
    - Different components: API, DB, RabbitMQ
    - All in the same Docker network
- Integration test run against the application. Checking behaviours
    - But triggered from local machine.
    - Requires local setup
    - Which is error-prone.
- These also run in CI
    - Sometimes fail, because the application isn't ready.



Representative `docker-compose.yml`.
```dockerfile
# Not a valid file. Simplified to provide context.
services:
  mysql:
   image: some-docker-url.com/mysql
   ports:
      - "3306"
   environment:
      - FOO=BAR
   command: "run_something.sh"
   healthcheck:
      test: "is_mysql_ready?"
      
  rabbitmq:
   image: some-docker-url.com/rabbitmq
   ports:
      - "5672"
      
  wiremock:
   image: some-docker-url.com/wiremock
   ports:
      - "8080"
```


Representative CI script
```shell
# Bring up the application
docker-compose up

# Figure out all component URLs and ports and export them as environment variables
EXPORT DOCKER_URLs ...
EXPORT DOCKER_PORTs...

# Install Ruby deps
bundle install

# Run the tests.  
if bundle exec rspec ./rspec;
  # If that command runs successfully
  # Then the tests have passed!
else
  # Something failed
fi

# cleanup afterwards
...
```


# Options
 - Get the tests running in Docker too.
   - Opens up ways to ensure readiness. e.g. healthchecks
   - Removes individual setup
   - Simplifies shell scripts
     - They don't need to figure out the local addresses and ports for things.
   - Can have the test command run as part of `docker-compose up` and check its ran ok. 
   - Or: invoke the test command separately from `dc up`

[1]: https://app.pluralsight.com/library/courses/getting-started-docker/table-of-contents
