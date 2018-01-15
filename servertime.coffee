module.exports = (robot) ->
  robot.respond /uptime/i, (msg) ->
    exec = require('child_process').exec
    exec 'uptime', (error, stdout, stderr) ->
      msg.send "server uptime is: " + stdout
