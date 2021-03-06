# Description:
#   Basic manners to make Shep more pleasant to talk to.
#
# Commands:
#   hubot thank you - Make Shep say you're welcome
#   hubot emoji - Return the link to the emoji cheatsheet.
#
# Author:
#   stevenklise

module.exports = (robot) ->
  robot.respond /emoji/i, (msg) ->
    msg.send "http://www.emoji-cheat-sheet.com/"

  robot.hear /^(hi|hello|hey)($| )([a-zA-Z0-9]+)?/i, (msg) ->
    recipient = msg.message.user.name
    recipient = msg.match[3] if msg.match[3]? and msg.match[3] isnt "shep"
    msg.send "Hi #{recipient}!"

  robot.respond /thank you$|thanks$/i, (msg) ->
    msg.send "You're welcome, #{msg.message.user.name}"