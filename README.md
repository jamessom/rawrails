# RawRails

![](http://i.imgur.com/lUoRnnY.png)

## How to use the repository

- First install [docker](https://docs.docker.com/engine/installation/) and [docker-composer](https://docs.docker.com/compose/install/)
- Run this command to generate Rails files ```docker run -it --rm --user "$(id -u):$(id -g)" -v "$PWD":/usr/src/app -w /usr/src/app rails rails new -d=mysql --skip-bundle .```
   > you can change the version of rails by passing the tag referring to the version ex: ```rails:latest``` or ```rails:4.2.3``` [see more](https://hub.docker.com/r/library/rails/tags/)

   > You can change the database system, but you need to make the necessary changes

   > do not forget to change the database settings to either work correctly
   
- Go to the work dir and run ```docker-compose up --build```



### References
- [Some common .gitignore configurations](https://gist.github.com/octocat/9257657)
- [A collection of useful .gitignore templates - Windows.gitignore](https://github.com/github/gitignore/blob/master/Global/Windows.gitignore)
- [Creating a new Rails application project with Docker](https://github.com/IcaliaLabs/guides/wiki/Creating-a-new-Rails-application-project-with-Docker)
- [Docker Rails Mysql - Docker Official Image packaging for Ruby on Rails and MySQL](https://github.com/nooptr/docker-rails-mysql)
- [Dockerizing a Ruby on Rails Application](https://semaphoreci.com/community/tutorials/dockerizing-a-ruby-on-rails-application)
- [Dockerize a Rails 5, Postgres, Redis, Sidekiq and Action Cable Application with Docker Compose](https://nickjanetakis.com/blog/dockerize-a-rails-5-postgres-redis-sidekiq-action-cable-app-with-docker-compose)
- [Dockerize your Rails Application](https://runnable.com/docker/rails/dockerize-your-ruby-on-rails-application)
- [Local Rails Development with Docker and Docker Compose](https://ashleyconnor.co.uk/2017/07/22/local-rails-development-with-docker-and-docker-compose.html)
- [Intro to Docker for Developers: How to Run your Rails App on Docker](https://www.packet.net/blog/how-to-run-your-rails-app-on-docker/)
- [Setup Ruby On Rails on Ubuntu 14.10 Utopic Unicorn](https://gorails.com/setup/ubuntu/14.10)
- [Zero to Up and Running a Rails Project only using Docker](https://blog.codeminer42.com/zero-to-up-and-running-a-rails-project-only-using-docker-20467e15f1be)
- [Build a Minimal Docker Container for Ruby Apps](https://blog.codeship.com/build-minimal-docker-container-ruby-apps/)
- [Oficial Repository Rails image](https://hub.docker.com/r/library/rails/)
- [Developing Rails on docker-compose](https://engineering.adwerx.com/rails-on-docker-compose-7e2cf235fa0e)
