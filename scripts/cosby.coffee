# Description:
#   Who doesn't love a good Cosby gif?
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot cosby me
#
# Author:
#   fspinillo

cosbygif = [
 "http://i.imgur.com/1tQ29c0.gif"
,"http://i.imgur.com/IuqiWNI.gif"
,"http://i.imgur.com/Nng8caS.gif"
,"http://i.imgur.com/cKCykXj.gif"
,"http://i.imgur.com/3VOhMi8.gif"
,"http://i.imgur.com/UbAh9ih.gif"
,"http://i.imgur.com/oaNQdri.gif"
,"http://i.imgur.com/ytQjZiD.gif"
,"http://i.imgur.com/oBCpUUf.gif"
,"http://i.imgur.com/Emkzh9F.gif"
,"http://i.imgur.com/lzldtAb.gif"
,"http://i.imgur.com/purByjy.gif"
,"http://i.imgur.com/qZokZ4T.gif"
,"http://i.imgur.com/IhpEFAt.gif"
,"http://i.imgur.com/SabLOVe.gif"
,"http://i.imgur.com/Q2ukJFp.gif"
,"http://i.imgur.com/hOlUGL5.gif"
,"http://i.imgur.com/gM6VQAg.gif"
,"http://i.imgur.com/S3nYO8v.gif"
,"http://i.imgur.com/GGg7urJ.gif"
,"http://i.imgur.com/518K4Ok.gif"
,"http://i.imgur.com/Iz8I7iv.gif"
,"http://i.imgur.com/47VJOx0.gif"
,"http://i.imgur.com/NGg7jIW.gif"
,"http://i.imgur.com/HC5y857.gif"
,"http://i.imgur.com/YhS3uEe.gif"
,"http://i.imgur.com/ECxST1c.gif"
,"http://i.imgur.com/vcsrGXN.gif"
,"http://i.imgur.com/ROU390q.gif"
]

randomcosby = (msg) ->
	msg.send msg.random cosbygif

module.exports = (robot) ->
	robot.respond /cosby me/i, (msg) ->
		randomcosby msg
