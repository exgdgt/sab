# Description:
#   Yo.
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
#   dotevan

module.exports = (robot) ->
  robot.hear /^yo$/i, (msg) ->
    msg.send 'yo'

