# Description:
#   sinbad? sinworst? more like sinbest.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot evanjoke
#
# Author:
#   casszilla

module.exports = (robot) ->
  robot.respond /evanjokes/i, (msg) ->
    getPost(msg)

getRandom = (max, min) ->
  return Math.round(Math.random() * (max - min) + min)

getPost = (msg) ->
  key = 'api_key=7JiO230zMqmi5XpvhgjQ8ae8PPNCR378NeMiwIutbgjzwxNh21&'
  site = 'evanjokes.tumblr.com'
  base_url = 'http://api.tumblr.com/v2/blog/'
  blog_info_endpoint = base_url + site + '/info?' + key
  blog_post_endpoint = base_url + site + '/posts/quote?' + key

  msg.http(blog_info_endpoint)
    .get() (error, response, body) ->
      offset_max = Math.round(JSON.parse(body)['response']['blog']['posts'] / 20)
      offset = 'offset=' + getRandom(offset_max, 0)
      msg.http(blog_post_endpoint + offset)
        .get() (error, response, body) ->
          post_count = JSON.parse(body)['response']['posts'].length
          random_post_index = getRandom(post_count, 0) - 1
          text = JSON.parse(body)['response']['posts'][random_post_index]['text']
          source = JSON.parse(body)['response']['posts'][random_post_index]['source']
          msg.send text + "\n - " + source
