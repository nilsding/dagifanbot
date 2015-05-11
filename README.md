# dagifanbot

dagifanbot is a bot created using Twittbot 0.2.0.

See [nilsding/twittbot](https://github.com/nilsding/twittbot) to find out
more about Twittbot.

## Installation and usage

Install this bot's dependencies:

    $ bundle install

Authorize with Twitter for the first time:

    $ bundle exec twittbot auth

Edit the configuration files in ./etc to your needs:

    $ vim etc/timeline_reply.yml

And finally run the bot:

    $ bundle exec twittbot start
