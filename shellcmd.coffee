module.exports = (robot) ->
 robot.respond /start time/i, (msg) ->
    hostname = msg.match[1]
    @exec = require('child_process').exec
    command = "host #{uptime}"

    msg.send "Looking up #{hostname}..."
    msg.send "This is the command #{command}."

    @exec command, (error, stdout, stderr) ->
      msg.send error
      msg.send stdout
      msg.send stderr

