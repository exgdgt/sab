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
  name = new RegExp('thanks, ' + robot.name, 'i')
  robot.hear name, (msg) ->
    msg.send "You're welcome."
