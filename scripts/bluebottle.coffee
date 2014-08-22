# Description:
#   Show a picture of what the line at the Mint Plaza Blue Bottle looks like
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   sab blue bottle line
#   sab bb line
#   sab bb
#   sab blue bottle
#
# Author:
#   llkats

module.exports = (robot) ->
  robot.respond /(blue bottle|bb)( line)?/i, (msg) ->
    response = "http://zaarly-bluebottle-cam.s3.amazonaws.com/bbline.jpg?" + Math.floor(Math.random() * 10000000)
    msg.send(response)
