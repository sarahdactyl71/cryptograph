# Cryptograph

An app inspired by the hidden messages in the show Gravity Falls. I have always been fascinated by cryptograms and ciphers since I was a child. The opportunity to combine my programming skills with my love of mystery was a no-brainer. I hope that you are able to uncover mysteries of you own, and perhaps send some secrets to those who would be enthusiastic about receiveing them. Enjoy.

###Docker

You will want to have the latest version of Docker installed. Listed Below are some helpful links.

[Getting Started with Docker](https://docs.docker.com/get-started/ "Getting Started with Docker")

[Rails Application with Docker](https://docs.docker.com/compose/rails/#stop-the-application "Rails Application with Docker")

###Starting and Stopping the Application

After you have everything configured with Docker, run a few commands to get your server running.

Starting the app for the first time:
`docker-compose up --build`

I prefer used `docker-compose up -d` so I can have my containers running in the background.

This will build the necessary containers for you to host the rails app. `bundle install` should be included in the build instructions, but if you wanted to run it again for some reason the command is `docker-compose run web bundle install`.

While your containers are up, you should be able to visit `http://localhost:3000` and see the application up and running.

To stop the application you can either `^C` out of it or type `docker-compose down`.

###Database
I used Postgres for my database. Here are a few handy commands.

To create the database:
`docker-compose run web rake db:create`

To run migrations:
`docker-compose run web rake db:migrate`

To seed the database:
`docker-compose run web rake db:seed`

To roll a few instructions into one:
`docker-compose run web rake db:setup`

###RSpec

I used RSpec for my tests. You can run the entire suite with `docker-compose run web rspec`.

If you want to run a certain kind of test you can use `docker-compose run web rspec spec/models`.

###Heroku

I am working very hard at getting this app up and running to a point in which I can run it on Heroku.
