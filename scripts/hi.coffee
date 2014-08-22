# Description:
#   Greetings
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hi/hey/hello robot, robot says hi back
#
# Author:
#   llkats, jonursenbach

module.exports = (robot) ->
  robot.hear /(hi|hey|hello|hola|bonjour|salut|yo|sup),? SAB/i, (msg) ->
    greeting = msg.match[1].trim()
    msg.send greeting
