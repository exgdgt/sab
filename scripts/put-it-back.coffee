# Description:
#   put back the table
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
#   ajacksified

module.exports = (robot) ->
  robot.hear /（╯°□°）╯︵ ┻━┻/i, (msg) ->
    msg.send('┬──┬ ノ( ゜-゜ノ)')

  robot.hear /(┛ಠ_ಠ)┛彡┻━┻/i, (msg) ->
    msg.send('┬──┬ ノ( ゜-゜ノ)')
