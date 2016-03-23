module.exports = (robot) ->
  robot.hear /おい/i, (msg) ->
    msg.send "はい"
