# Description:
#   Sometimes we need an expert opinion from the Critic
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot what do you think of
#
# Author:
#   fspinillo

criticresponse = [
 "IT STINKS!"
,"I like it!"
,"It could use more work."
,"Ship it!"
,"/notbadface"
]

randomcritic = (msg) ->
	msg.send msg.random criticresponse

module.exports = (robot) ->
	robot.respond /what do you think of /i, (msg) ->
		randomcritic msg