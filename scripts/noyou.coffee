# Description:
#   No, You
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   <robot name>, you're <adjective> -- responds: no, you're <adjective>
#
# Author:
#   llkats

module.exports = (robot) ->
  matchit = /, you're (.*)/i
  robot.respond matchit, (msg) ->
    adjective = msg.match[1].trim()
    response = "No, YOU'RE " + adjective
    msg.send response

