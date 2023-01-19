# RailsGoat with Contrast
RailsGoat is a vulnerable version of the Ruby on Rails Framework from versions 3 to 6. It includes vulnerabilities from the OWASP Top 10, as well as some "extras" that the initial project contributors felt worthwhile to share. This project is designed to educate both developers, as well as security professionals.

## WARNING!
THIS WEB APPLICATION CONTAINS NUMEROUS SECURITY VULNERABILITIES WHICH WILL RENDER YOUR COMPUTER VERY INSECURE WHILE RUNNING! IT IS HIGHLY RECOMMENDED TO COMPLETELY DISCONNECT YOUR COMPUTER FROM ALL NETWORKS WHILE RUNNING!

## Google Chrome Note
Google Chrome performs filtering for reflected XSS attacks. These attacks will not work unless chrome is run with the argument `--disable-xss-auditor`.


# Requirements

1. Docker Community Edition
2. docker-compose

When built, the Dockerfile pulls in all of the source code and builds the dotnet Core application. 

## How to build and run

### 1. Running in a Docker Container

The provided Dockerfile is compatible with both Linux and Windows containers (note from Steve: I've only run it on Linux).

To build a Docker image, execute the following command: docker-compose build

### Linux Containers

To run the `railsgoat` Container image, execute the following: docker-compose  up -d

Nodegoat should be accessible at http://ip_address:3000.


### Stopping the Docker container

To stop the `railsgoat` container, execute the following command in the same directory as your docker-compose files: docker-compose stop 

### 2. Building with Jenkins
Included is a sample Jenkinsfile that can be used as a Jenkins Pipeline to build and run the application. The Jenkins Pipeline passes buildNumber as a parameter to the YAML. 

#### Default user accounts
The database comes pre-populated with these user accounts created as part of the seed data -
* Admin Account - u:admin@metacorp.com p:admin1234 
* User Accounts - u:jmmastey@metacorp.com p:railsgoat!
* New users can also be added using the sign-up page.
