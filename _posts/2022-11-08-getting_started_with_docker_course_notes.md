---
layout: post
title: "Course notes: Getting stared with Docker"
date: 2022-11-08 10:30:00 +0100
categories: jekyll update
tags: notes course
---
> By Nigel Poulton

- [Pluralsight course][1]
- [Github repo for training material][3]
- [Play with Docker][2] for web based docker env.

He also has more courses on:
- Docker
- Kubernetes

## My thoughts
I liked his teaching style, and the examples he went through. 
Covered the broad strokes really well, then dived into more detail. 
Definitely worth looking at his other courses. Good intro or refresher on Docker basics.

## Deploying a Containerised App

### Push the image
`docker image push aflynn/gsd:first-ctr `

### Pull and run the image (in detached mode)
`docker container run -d --name web -p 8080:8080 aflynn gsd:first-ctr` 

### Pull and run an image (in interactive mode)
`docker container run -it --name test alpine sh`

### Drop out of container, but leave it running
`CTRL +P + Q`

## Microservices and the real world
 `docker-compose` for multi container apps. 
 Or just to avoid needing manual commands.

Docker swarm as an alternative to Kubernetes (k8s)

### Docker services
A docker service maps to a single "microservice service". e.g. UI service, DB, service, and an API service in a simple app.

Create a service with 3 replicas of my GSD image, load balanced across the 3 manager nodes I already created.

`docker service create --name web -p 8080:8080 --replicas 3 aflynn/gsd:first-ctr`

Use `docker service` to manage the service.

Use docker stacks, to include deployment info in your `docker-compose.yml`.

Docker stacks can't build images on the fly. Need complete images, to pull.

#### Deploy the stack
Have already pushed my `docker-swarm` image, so can pull it down easily
`docker stack deploy -c docker-compose.yml counter`

#### Check its up
`docker stack ps counter`

Make changes to stack by editing the `docker-compose.yml` and deploy it again. Docker will observe the change, and update existing stack.

[1]: https://app.pluralsight.com/library/courses/getting-started-docker/table-of-contents 
[2]: https://labs.play-with-docker.com/
[3]: https://github.com/nigelpoulton/gsd