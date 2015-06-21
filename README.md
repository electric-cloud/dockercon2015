## Goals:
- You're looking at Docker but need to tie it together with a bunch of existing tools
- You're looking to increase your velocity by implementing continuous delivery & testing
- You need to gather and surface critical stats for your applications
- You want to make sure you're auditing for security at the earliest possible stage
- You don't want to marry yourself to a particular cloud provider like EC2 or OpenStack

## Category:

Management & Operations
## Concepts shown:

- CI/ CD
- Deployment
- Cloud independence (EC2 or OpenStack as the underlying hosts that have the docker engine)
- Stats

## Containers used:

### docker-bench-security
https://registry.hub.docker.com/u/diogomonica/docker-bench-security/

Forked, re-built the container and published to docker registry
https://github.com/nikhilv/docker-bench-security
https://bintray.com/nikhilv/registry

### mysql
https://registry.hub.docker.com/_/mysql/

### wildfly
https://registry.hub.docker.com/u/jboss/wildfly/

### dashing
https://registry.hub.docker.com/u/frvi/dashing/

##  Helpful Links:
CIS Docker 1.6 Benchmark
https://benchmarks.cisecurity.org/tools2/docker/CIS_Docker_1.6_Benchmark_v1.0.0.pdf

Dashing dashboards
http://shopify.github.io/dashing/

## Reference application "Heat Clinic"

Heat Clinic
https://github.com/BroadleafCommerce/DemoSite
http://www.broadleafcommerce.com/docs/core/current/getting-started

## Tools / Services we integrated with:
- Docker!!
- Docker Hub and Bintray for docker registries
- Docker Bench
- EC2 and OpenStack
- Wildfly (Application Server)
- MySQL (Database)
- Selenium (Developer / Quality Assurance testing tool)
- Dashing (Dashboard)
- Reference implementation using ElectricFlow and ElectricAccelerator.
	- Flow is the continuous delivery application
	- We used Accelerator to run our selenium tests in parallel spread out in a cluster
## About
This repository contains our work for the Docker 2015 Hackathon

## Team Members 

"Continuous Docker-y"

Tanay Nagjee

Nikhil Vaze

