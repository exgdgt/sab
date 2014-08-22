# Description:
#   Hump Day shenanigans, because everyone loves the Geico camel
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
  robot.hear /hump day/i, (msg) ->
    camel = [
      '!sound camelwoo',
      '!sound camellaugh',
      '!sound gwdii1',
      '!sound gwdii2',
      'https://dl.dropbox.com/u/37968874/gifs/geico-camel.gif',
      'http://stubbornthoughts.files.wordpress.com/2013/06/umbpafs.gif',
      'https://www.youtube.com/watch?v=kWBhP0EQ1lA'
    ]

    response = msg.random camel
    msg.send response

