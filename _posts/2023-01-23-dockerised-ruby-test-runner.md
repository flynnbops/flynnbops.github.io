---
layout: post
title: "Creating a ruby test runner with docker compose"
date: 2023-01-28 21:30:00 +0000
categories: jekyll update
---

> DRAFT POST

# Assumptions
For this post I'm assuming basic `docker` knowledge. 
The comments and overall intent should still come across even if you don't have in depth docker knowledge.

If you want to learn the basics:
- [What is a container][1]
- [Overview of docker compose][2]

# The context
- Application under test(AUT) built using `docker-compose`
    - Different components: API, DB, RabbitMQ
    - All in the same Docker network
- Ruby integration test run against the AUT via shell script 
  - Checking key behaviours
  - But triggered from local machine
  - Requires setup on everyone's machine
    - Which is error-prone
    - And isn't using Docker to the fullest
- These tests also run in our CI pipeline
    - Sometimes fail, because the application isn't ready
    - Or due to changes that impact `localhost`

![Integration structure](/images/2023-01-28-original-structure.PNG)
*Fig.1 Image showing the structure.*

## Representative `docker-compose.yml` (original)
Not a valid file. Simplified to provide context.

```dockerfile
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

## Representative CI script (original)
Not a valid file. Simplified to provide context.

```shell
# Bring up the application
docker-compose up

# Figure out all component ports and export them as environment variables
MYSQL_PORT=$(docker-compose port mysql 3306 | cut -f2 -d":")
RABBITMQ_PORT=$(docker-compose port rabbitmq 3306 | cut -f2 -d":")
WIREMOCK_PORT=$(docker-compose port wiremock 3306 | cut -f2 -d":")

# and so on ...

# Install Ruby deps to your local machine
bundle install

# Run the tests from your local machine, against the application built on Docker.
if bundle exec rspec ./rspec;
  # If that command runs successfully
  # Then the tests have passed!
else
  # Something failed
fi

# cleanup afterwards
...
```

# What will I do?
- Get the tests running in the same `docker network` as the AUT
    - Removes individual setup
    - Simplifies shell scripts
        - They don't need to figure out the local addresses and ports for things
- Add additional `healthchecks` to ensure AUT readiness
- Install the `gems` into a shared volume
  - Which can be used be subsequent test runs
  - Speeds up development of tests
  - Only one `test run` can access the volume at a time
- Simplify the shell script

![UpdatedIntegration structure](/images/2023-01-28-updated-structure.PNG)
*Fig.2 Image showing the updated structure.*

## How can I trigger the tests?
Run the test command run as part of `docker-compose up` and check for pass/failure. e.g. query the status code of the test container. 

Or, invoke the test command separately from the `docker-compose up` stage. This will allow me to check the `exit status` of the "run tests" command.
The CI pipeline expects this information too, so this fits in nicely to existing processes.

## Representative `docker-compose.yml` (updated)
Not a valid file. Simplified to provide context.

```dockerfile
# Volume to store installed Ruby gems. Removes the need to download gems in each test run.
volumes:
  bundle_path:

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
   healthcheck:
      test: ["CMD", "rabbitmqctl", "status"]

  wiremock:
   image: some-docker-url.com/wiremock
   ports:
      - "8080"
   healthcheck:
    test: ["CMD", "curl", "http://0.0.0.0:8080/__admin/mappings"]
    
  # During a `docker-compose up` the gems will be downloaded into the shared volume.
  # The tests won't run when we run `docker-compose up`.
  # They still need to be invoked.
  test-runner:
    image: "some-docker-url.com/ruby:[some-verison]"
    # Mount our test files, and gem shared volume
    volumes:
      - [test-files]/:/usr/src/integration
      - bundle_path:/bundle
    # We have rspec in our Gemfile. 
    # This container is healthy when the gems are all installed.
    healthcheck:
      test: ["CMD", "bundle", "list", "rspec"]
      
    # This will start the process of installing gems into the shared volume
    # Subseqent test runs must wait to access it
    # This means gem installation is started before the tests are run, giving us a speed boost.
    command: bundle install
    
    # We now can use docker network to communicate with the other containers.
    environment:
      BUNDLE_PATH: /bundle/vendor
      MYSQL_HOST: mysql
      MYSQL_PORT: 3306
      WIREMOCK_HOST: http://wiremock
      WIREMOCK_PORT: 8080
      RABBITMQ_HOST: rabbitmq
      RABBITMQ_PORT: 5672
```

## Representative CI script (updated)
Not a valid file. Simplified to provide context.

```shell

# Bring up the application
docker-compose up

# Run the tests from the Ruby test-runner that's now in Docker
if docker-compose run test-runner bash -c 'bundle install && bundle exec rspec'; then
  # If the command runs successfully
  # Then the tests have passed
else
  # Something failed
fi

# cleanup afterwards
...
```

[1]: https://www.docker.com/resources/what-container/
[2]: https://docs.docker.com/compose/
