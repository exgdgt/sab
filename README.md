# sab (Hubot)

![sab](https://pbs.twimg.com/profile_images/378800000189651899/fab89a213091f9fde96823f9185785a3.png)

sab is a [Hubot](https://hubot.github.com/) robot that is set up with various fun and useful plugins.

## Configuration
All configuration data is stored in `config.sh`. `config.sh.dist` is available to get you jumpstarted.

## Third-Party API's
Some plugins that are installed require third party API keys. Store those keys in your `config.sh` file, but update `config.sh.dist` with an empty variable.

Then also update `dev_runner.sh` and `Makefile` with the usage of those keys, so the local instance of sab can pick it up; as well as `make init-heroku` seeing it when pushing your config changes up to Heroku.

**Don't store your API keys directly in your plugin.**

## Development
For developing on sab, we have a handy shell script to boot up an instance with the necessary environment data.

```
./dev_runner.sh
```

_If it says you need to remove `scripts/mongolab-brain.coffee`, do that so your testing doesn't affect the production MongoDB database._

## Deployment
After attaching your Heroku app to your local directory, via `heroku git:remote -a {APP NAME}`, run `make init-heroku` to automatically run the Heroku config commands to create the environment variables for sab to run properly.
