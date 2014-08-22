# Description:
#   Yelling!
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   <robot name>! - responds <username>!
#
# Author:
#   llkats

module.exports = (robot) ->
  name = new RegExp(robot.name + '!', 'i')
  robot.hear name, (msg) ->
    response = msg.message.user.name.replace(/[\s](.*)/, '') + '!'
    msg.send response

