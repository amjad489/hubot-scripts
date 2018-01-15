module.exports = (robot) ->
  robot.respond /auth users/i, (msg) ->
    #msg.send "#{msg.message.user.name}"
    if "#{msg.message.user.name}" is "syedamjad"
       msg.send "Hi, You are authorized"
    else
      msg.send "Error: your are not authorized"
