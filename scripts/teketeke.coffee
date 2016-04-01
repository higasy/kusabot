module.exports = (robot) ->
  robot.hear /おい/g, (msg) ->
    msg.send "はい"
