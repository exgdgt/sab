#!/bin/sh

# If any of these datapoint change, update them in Makefile

if [ -f "scripts/mongolab-brain.coffee" ]
then
  echo "Since we don't want development data to corrupt the production database, you should run:"
  echo "  rm scripts/mongolab-brain.coffee"
  echo ""
  echo "And then when you're done developing, pull that file back (don't commit the remove!)."
  echo "  git co scripts/mongolab-brain.coffee"
  exit 1
fi

source config.sh

export HEROKU_URL=$HEROKU_URL

export HUBOT_OFF_THE_GRID_LOCATION_ID=$HUBOT_OFF_THE_GRID_LOCATION_ID

export HUBOT_SLACK_BOTNAME=$HUBOT_SLACK_BOTNAME
export HUBOT_SLACK_TEAM=$HUBOT_SLACK_TEAM
export HUBOT_SLACK_TOKEN=$HUBOT_SLACK_TOKEN

# The base sound URL here is built off of Jon's Dropbox account. Change it if you want to, just make sure to drop the
# shared "Sounds" folder into your public folder so you don't need to mess with spinning up a box to just serve sounds.
export HUBOT_SOUNDSPACES_ROOM_KEY=$HUBOT_SOUNDSPACES_ROOM_KEY
export HUBOT_SOUNDSPACES_BASE_SOUND_URL=$HUBOT_SOUNDSPACES_BASE_SOUND_URL
export HUBOT_SOUNDSPACES_SOUND_URL=$HUBOT_SOUNDSPACES_SOUND_URL

export MONGOLAB_URI=$MONGOLAB_URI

./bin/hubot -n sab
