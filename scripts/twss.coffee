# Description:
#   TWSS snappy response
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#
# Author:
#   llkats

module.exports = (robot) ->
  robot.hear /that's what she said/i, (msg) ->
    msg.send("That is NOT what she said.")

