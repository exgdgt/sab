# Description:
#   Otters need some love too!
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot otter me
#
# Author:
#   fspinillo

otters = [
 "http://i.imgur.com/t1S1ws1.jpg?1"
,"http://i.imgur.com/SdVi9kD.jpg"
,"http://i.imgur.com/87zhY.jpg"
,"http://i.imgur.com/FEDc9.jpg"
,"http://i.imgur.com/chhSb.jpg"
,"http://i.imgur.com/REDxu.jpg"
,"http://i.imgur.com/ik1MA.jpg"
,"http://i.imgur.com/Iz92C.jpg"
,"http://i.imgur.com/CGogYd5.gif"
,"https://dl.dropbox.com/u/2666874/Gifs/otter-toys.gif"
,"https://dl.dropbox.com/u/2666874/Gifs/ottertickle.gif"
,"http://i.imgur.com/sH2xjQo.gif"
,"http://i.imgur.com/FrKvQm1.gif"
]

randomotter = (msg) ->
	msg.send msg.random otters

module.exports = (robot) ->
	robot.respond /otter me/i, (msg) ->
		randomotter msg
